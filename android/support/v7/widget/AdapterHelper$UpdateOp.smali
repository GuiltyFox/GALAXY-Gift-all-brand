.class Landroid/support/v7/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/Object;

.field d:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput p1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    .line 654
    iput p2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    .line 655
    iput p3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    .line 656
    iput-object p4, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    .line 657
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    packed-switch v0, :pswitch_data_1a

    .line 670
    :pswitch_5
    const-string/jumbo v0, "??"

    :goto_8
    return-object v0

    .line 662
    :pswitch_9
    const-string/jumbo v0, "add"

    goto :goto_8

    .line 664
    :pswitch_d
    const-string/jumbo v0, "rm"

    goto :goto_8

    .line 666
    :pswitch_11
    const-string/jumbo v0, "up"

    goto :goto_8

    .line 668
    :pswitch_15
    const-string/jumbo v0, "mv"

    goto :goto_8

    .line 660
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_9
        :pswitch_d
        :pswitch_5
        :pswitch_11
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_15
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 682
    if-ne p0, p1, :cond_5

    .line 714
    :cond_4
    :goto_4
    return v0

    .line 685
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 686
    goto :goto_4

    .line 689
    :cond_13
    check-cast p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 691
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    .line 692
    goto :goto_4

    .line 694
    :cond_1d
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v0, :cond_3a

    .line 696
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-eq v2, v3, :cond_4

    .line 700
    :cond_3a
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-eq v2, v3, :cond_42

    move v0, v1

    .line 701
    goto :goto_4

    .line 703
    :cond_42
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-eq v2, v3, :cond_4a

    move v0, v1

    .line 704
    goto :goto_4

    .line 706
    :cond_4a
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    if-eqz v2, :cond_5a

    .line 707
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 708
    goto :goto_4

    .line 710
    :cond_5a
    iget-object v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    .line 711
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 719
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    .line 720
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    add-int/2addr v0, v1

    .line 721
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/2addr v0, v1

    .line 722
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 676
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
