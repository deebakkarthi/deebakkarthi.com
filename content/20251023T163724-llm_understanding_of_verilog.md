---
title: How well do LLMs understand verilog
date:  2025-10-23T16:37:24-04:00
tags:
- uva
- assertion_gen
---

For this experiment I will be testing how well chatgpt understands verilog. All the prompts were given without an account. They were run on an incognito window.

First I need to define what it means for the LLM to understand verilog. I want to know whether it has minute understanding of all of the syntax of verilog. I want to if it has semantic understanding of verilog and I need to know about the code generation capabilities.


Does being able to generate good code make you also good at understanding code? 

I am assuming naively that the training is done using a bunch of prompts and there might have been more prompts about verilog code generation than asking very hard questions about verilog


# Syntactic knowledge

Modify questions from this book
https://lucc.pl/inf/architektura_komputerow_2/verilog/verilog_faq.pdf


```
Write a simple verilog program for the following

Assign to a variable called as "signupforfree" the value of 35 where the value is preserved until next assignment. Enclose this in a construct that is synthesizable 
```


# output 

In Verilog, to assign a value to a variable and preserve it until the next assignment, you can use a **reg** type variable, since `reg` holds its value until explicitly updated.

The following Verilog code implements the requirement where the variable `signupforfree` is assigned the value `35`, and this value is preserved until the next assignment. The assignment occurs inside an always block, making it synthesizable:

```verilog
module signup (
    input clk,      // Clock input
    input reset,    // Reset input
    output reg [7:0] signupforfree  // 8-bit reg to store the value
);

    // Initialize the value on reset, and preserve the value otherwise
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            signupforfree <= 8'd35;  // Assign 35 on reset
        end
        // Else case is not needed as signupforfree holds the value automatically
    end

endmodule
```

### Explanation:

1. **`reg [7:0] signupforfree;`**: This defines an 8-bit register (variable) `signupforfree` to store the value.
    
2. **`always @(posedge clk or posedge reset)`**: The always block triggers on the positive edge of the clock or when the reset signal is asserted.
    
3. **`if (reset)`**: When the reset signal is active, `signupforfree` is assigned the value 35 (encoded as `8'd35`, meaning 35 in 8-bit).
    
4. The value of `signupforfree` is preserved across clock cycles until the reset is triggered again or a new assignment occurs.
    

This is a synthesizable design because it uses clock-driven logic with an `always` block, which is typical for hardware designs. The value of `signupforfree` will remain `35` until it is explicitly changed (e.g., by another reset or a different condition).


# Evaluation
- It used `signup` as a module name
- It used a input signal called `reset` 
- These are implicit assumptions made by the model that I didn't ask for




# Q2

Consider the following system verilog code

wire hamilton, prudence;
assign hamilton  = prudence;

At timestep t=0 prudence is set to high
What will be the value of hamilton?

How can you make it so that prudence's value is also updated when hamilton is updated


# Output
Let's break down the SystemVerilog code:

```systemverilog
wire hamilton, prudence;
assign hamilton  = prudence;
```

At timestep `t=0`, you mentioned that `prudence` is set to high. This means `prudence` is 1 (`high`).

Since there is an `assign` statement connecting `hamilton` to `prudence`, at timestep `t=0`, `hamilton` will also be 1 (`high`), because the value of `hamilton` is directly driven by `prudence`.

### What happens when `hamilton` is updated?

In the current code, you cannot directly update `hamilton` in the same way as you would with `prudence`, because `hamilton` is a `wire`, which means its value is driven by the `assign` statement. The value of `hamilton` is always determined by the value of `prudence`, and you cannot change `hamilton` independently from `prudence` in this configuration.

If you want to ensure that `prudence` is updated whenever `hamilton` changes, you will need to have a more dynamic way of setting the values.

### Solution to make `prudence` update when `hamilton` updates:

One way to achieve this is by using a **`reg`** for `prudence` and a **`wire`** for `hamilton`. You can then create a **`always` block** that updates `prudence` based on the value of `hamilton`. Here's how you can do that:

```systemverilog
reg prudence;
wire hamilton;

assign hamilton = prudence; // hamilton follows prudence

always @(hamilton) begin
    prudence = hamilton; // update prudence when hamilton changes
end
```

In this example:

1. `hamilton` is a `wire` driven by the value of `prudence`.
    
2. Inside the `always` block, `prudence` is updated whenever `hamilton` changes (which can be done through simulation or another piece of logic that drives `hamilton`).
    

### Important Notes:

- The `always` block will continuously monitor changes to `hamilton` and update `prudence` accordingly.
    
- This introduces a feedback loop, so care must be taken to avoid infinite loops or undesirable oscillations. A more controlled feedback loop (with `if` conditions or clocking) may be necessary for specific use cases.

# Evaulation
- It doesn't have knowledge about the `alias` keyword


# Q3

consider the following verilog code


module btggcszaft
#( parameter dxbyltdtjn = 35)

(input a,
output b);

b = ~a

endmodule


btggcszaft #(dxbyltdtjn=34) idewkepbza (a);

defparam idewkepbza.dxbyltdtjn = 128



what is the value of dxbyltdtjn in this instantiation

# Answer

In Verilog, parameters can be passed at both the module definition and instantiation levels, and they can also be redefined using `defparam`.

Let's break it down step by step:

### 1. **Module Definition:**

```verilog
module btggcszaft
#( parameter dxbyltdtjn = 35)
(input a,
output b);

b = ~a;

endmodule
```

In the module definition, `dxbyltdtjn` is a parameter with a default value of `35`. This means that if no value is specified for `dxbyltdtjn` when the module is instantiated, it will default to `35`.

### 2. **Instantiation:**

```verilog
btggcszaft #(dxbyltdtjn=34) idewkepbza (a);
```

In this line, the module `btggcszaft` is instantiated with the parameter `dxbyltdtjn` explicitly set to `34`. This overrides the default value of `35` defined in the module.

### 3. **Defparam Statement:**

```verilog
defparam idewkepbza.dxbyltdtjn = 128;
```

The `defparam` statement is used to modify the value of a parameter after the instantiation. In this case, `dxbyltdtjn` is being set to `128` for the specific instance `idewkepbza`.

### **Final Value of `dxbyltdtjn`:**

When the `defparam` statement is applied, it overrides the parameter value that was set during the instantiation. Therefore, the final value of `dxbyltdtjn` for the instance `idewkepbza` will be `128`, not `34`.

### Conclusion:

After considering both the instantiation and the `defparam` statement, the value of `dxbyltdtjn` for the instantiated module `idewkepbza` will be **128**.

# Evaluation
Correct


# Question 4
This was about functions and it didn't know how to answer them. 

# Question 5



# Verilog finding bugs

- This 8-bit wide 2-to-1 multiplexer doesn't work. Fix the bug(s).
	- Wrong
- Nand
	- Correct
- Mux 4x 1
	- Wrong
- add-subs
	- Correct

# Verilog Verification using test benches
- Clock passed
- t tff passed


# Questions
- Syntax
	- always
	- bidirection
	- defparam
	- 