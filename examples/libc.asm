operator_add_u8:
operator_add_i8:
    add %h, %a
ret

operator_add_u16:
operator_add_i16:
    add %ha, %bc
ret

operator_add_u32:
operator_add_i32:
    add %bc, %mn
    adc %ha, %xl
ret

operator_add_u64:
operator_add_i64:
    mov -4(%sp), %ha
    mov -2(%sp), %bc
    mov %ha, 6(%sp)
    mov %bc, 8(%sp)
    add %mn, %bc
    adc %xl, %ha
    mov %ha, -4(%sp)
    mov %bc, -2(%sp)
    mov -4(%sp), %mn
    mov -2(%sp), %xl
    mov %xl, 2(%sp)
    mov %mn, 4(%sp)
    adc %bc, %mn
    adc %ha, %xl
    mov %mn, -4(%sp)
    mov %xl, -2(%sp)
ret

operator_sub_u8:
operator_sub_i8:
    sub %h, %a
ret

operator_sub_u16:
operator_sub_i16:
    sub %ha, %bc
ret

operator_sub_u32:
operator_sub_i32:
    sub %bc, %mn
    sbb %ha, %xl
ret

operator_sub_u64:
operator_sub_i64:
    mov -4(%sp), %ha
    mov -2(%sp), %bc
    mov %ha, 6(%sp)
    mov %bc, 8(%sp)
    sub %mn, %bc
    sbb %xl, %ha
    mov %ha, -4(%sp)
    mov %bc, -2(%sp)
    mov -4(%sp), %mn
    mov -2(%sp), %xl
    mov %xl, 2(%sp)
    mov %mn, 4(%sp)
    sbb %bc, %mn
    sbb %ha, %xl
    mov %mn, -4(%sp)
    mov %xl, -2(%sp)
ret