.class public Landroid/support/v8/renderscript/Element;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Element$1;,
        Landroid/support/v8/renderscript/Element$Builder;,
        Landroid/support/v8/renderscript/Element$DataKind;,
        Landroid/support/v8/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/support/v8/renderscript/Element;

.field mKind:Landroid/support/v8/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroid/support/v8/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 746
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 747
    return-void
.end method

.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p3, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p4, "dk"    # Landroid/support/v8/renderscript/Element$DataKind;
    .param p5, "norm"    # Z
    .param p6, "size"    # I

    .prologue
    .line 727
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 728
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_27

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_27

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_27

    .line 731
    const/4 v0, 0x3

    if-ne p6, v0, :cond_21

    .line 732
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 739
    :goto_18
    iput-object p3, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    .line 740
    iput-object p4, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    .line 741
    iput-boolean p5, p0, Landroid/support/v8/renderscript/Element;->mNormalized:Z

    .line 742
    iput p6, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    .line 743
    return-void

    .line 734
    :cond_21
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p6

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    goto :goto_18

    .line 737
    :cond_27
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    goto :goto_18
.end method

.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p3, "e"    # [Landroid/support/v8/renderscript/Element;
    .param p4, "n"    # [Ljava/lang/String;
    .param p5, "as"    # [I

    .prologue
    .line 710
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 711
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 712
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    .line 713
    iput-object p3, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    .line 714
    iput-object p4, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 715
    iput-object p5, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    .line 716
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    .line 717
    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    .line 718
    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I

    .line 719
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1f
    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    .line 720
    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    aput v2, v1, v0

    .line 721
    iget v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/support/v8/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 723
    :cond_3d
    invoke-direct {p0}, Landroid/support/v8/renderscript/Element;->updateVisibleSubElements()V

    .line 724
    return-void
.end method

.method public static ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 416
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 418
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 438
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    .line 440
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 311
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

    .line 313
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static ELEMENT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 402
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

    .line 404
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 388
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;

    .line 390
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 480
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

    .line 482
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 487
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

    .line 489
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 493
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 494
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

    .line 496
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 395
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;

    .line 397
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 501
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

    .line 503
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 507
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 508
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

    .line 510
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 514
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 515
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

    .line 517
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 353
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;

    .line 355
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 584
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 585
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

    .line 587
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 592
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

    .line 594
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 599
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

    .line 601
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 367
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;

    .line 369
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 626
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 627
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;

    .line 629
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 633
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 634
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;

    .line 636
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 640
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 641
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;

    .line 643
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 381
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;

    .line 383
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 668
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 669
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;

    .line 671
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 675
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 676
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;

    .line 678
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 682
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 683
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;

    .line 685
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 339
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;

    .line 341
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 543
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

    .line 545
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 550
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

    .line 552
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 557
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

    .line 559
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_2X2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 703
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 704
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

    .line 706
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_3X3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 696
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 697
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

    .line 699
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_4X4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 689
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 690
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

    .line 692
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_4444(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 465
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 466
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    .line 468
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_5551(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 459
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

    .line 461
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 473
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    .line 475
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGB_565(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 445
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    .line 447
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGB_888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 452
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;

    .line 454
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static SAMPLER(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 423
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

    .line 425
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static SCRIPT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 430
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

    .line 432
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static TYPE(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 409
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;

    .line 411
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 346
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;

    .line 348
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 563
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 564
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

    .line 566
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 570
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 571
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

    .line 573
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 577
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 578
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

    .line 580
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 360
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;

    .line 362
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 605
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 606
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;

    .line 608
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 612
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 613
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;

    .line 615
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 619
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 620
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;

    .line 622
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 374
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;

    .line 376
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 647
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 648
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

    .line 650
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 654
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 655
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

    .line 657
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 662
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

    .line 664
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 325
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    .line 327
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 521
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 522
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

    .line 524
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 528
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 529
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

    .line 531
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 535
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 536
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    .line 538
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
    .registers 11
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/support/v8/renderscript/Element$DataKind;

    .prologue
    .line 830
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_c

    move-object v7, p0

    .line 831
    check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 832
    .local v7, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v7, p1, p2}, Landroid/support/v8/renderscript/ElementThunker;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 880
    .end local v7    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_b
    return-object v0

    .line 835
    :cond_c
    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_L:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_LA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    .line 842
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Unsupported DataKind"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_31
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    .line 849
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Unsupported DataType"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_4e
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_5f

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_5f

    .line 852
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_5f
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_70

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_70

    .line 855
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_70
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_81

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_81

    .line 858
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_81
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_92

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_92

    .line 862
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_92
    const/4 v6, 0x1

    .line 866
    .local v6, "size":I
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_b8

    .line 878
    :goto_9e
    const/4 v5, 0x1

    .line 879
    .local v5, "norm":Z
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iget v2, p2, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 880
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto/16 :goto_b

    .line 868
    .end local v1    # "id":I
    .end local v5    # "norm":Z
    :pswitch_b1
    const/4 v6, 0x2

    .line 869
    goto :goto_9e

    .line 871
    :pswitch_b3
    const/4 v6, 0x3

    .line 872
    goto :goto_9e

    .line 874
    :pswitch_b5
    const/4 v6, 0x4

    goto :goto_9e

    .line 866
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_b3
        :pswitch_b5
    .end packed-switch
.end method

.method static createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
    .registers 10
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;

    .prologue
    .line 758
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_c

    move-object v7, p0

    .line 759
    check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 760
    .local v7, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v7, p1}, Landroid/support/v8/renderscript/ElementThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 766
    .end local v7    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_b
    return-object v0

    .line 762
    :cond_c
    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    .line 763
    .local v4, "dk":Landroid/support/v8/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 764
    .local v5, "norm":Z
    const/4 v6, 0x1

    .line 765
    .local v6, "vecSize":I
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 766
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto :goto_b
.end method

.method public static createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
    .registers 11
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "size"    # I

    .prologue
    .line 783
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_c

    move-object v7, p0

    .line 784
    check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 785
    .local v7, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v7, p1, p2}, Landroid/support/v8/renderscript/ElementThunker;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 807
    .end local v7    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_b
    return-object v0

    .line 787
    :cond_c
    const/4 v0, 0x2

    if-lt p2, v0, :cond_12

    const/4 v0, 0x4

    if-le p2, v0, :cond_1b

    .line 788
    :cond_12
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Vector size out of range 2-4."

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_1b
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_44

    .line 811
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Cannot create vector of non-primitive type."

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :pswitch_2f
    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    .line 805
    .local v4, "dk":Landroid/support/v8/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 806
    .local v5, "norm":Z
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, p2}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 807
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto :goto_b

    .line 791
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .registers 9

    .prologue
    const/16 v7, 0x23

    const/4 v6, 0x0

    .line 75
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    if-nez v5, :cond_8

    .line 95
    :cond_7
    return-void

    .line 79
    :cond_8
    const/4 v4, 0x0

    .line 80
    .local v4, "noPaddingFieldCount":I
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v3, v5

    .line 82
    .local v3, "fieldCount":I
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_d
    if-ge v0, v3, :cond_1e

    .line 83
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_1b

    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 82
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 87
    :cond_1e
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "ctNoPadding":I
    move v2, v1

    .end local v1    # "ctNoPadding":I
    .local v2, "ctNoPadding":I
    :goto_25
    if-ge v0, v3, :cond_7

    .line 91
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_3b

    .line 92
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    aput v0, v5, v2

    .line 90
    :goto_37
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "ctNoPadding":I
    .restart local v2    # "ctNoPadding":I
    goto :goto_25

    :cond_3b
    move v1, v2

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    goto :goto_37
.end method


# virtual methods
.method public getBytesSize()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroid/support/v8/renderscript/Element$DataKind;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroid/support/v8/renderscript/Element$DataType;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    return-object v0
.end method

.method public getSubElement(I)Landroid/support/v8/renderscript/Element;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 230
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_d

    .line 231
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_d
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1d

    .line 234
    :cond_14
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1d
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementArraySize(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_d

    .line 264
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_d
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1d

    .line 267
    :cond_14
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1d
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getSubElementCount()I
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_6

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    goto :goto_5
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_d

    .line 247
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_d
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1d

    .line 250
    :cond_14
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1d
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementOffsetBytes(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_d

    .line 280
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_d
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1d

    .line 283
    :cond_14
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1d
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getVectorSize()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroid/support/v8/renderscript/Element;)Z
    .registers 5
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    const/4 v0, 0x1

    .line 896
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 904
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->mSize:I

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v1, v2, :cond_20

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v1, v2, :cond_20

    iget v1, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    if-eq v1, v2, :cond_7

    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isComplex()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    if-nez v2, :cond_6

    .line 206
    :cond_5
    :goto_5
    return v1

    .line 201
    :cond_6
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_7
    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 202
    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    if-eqz v2, :cond_16

    .line 203
    const/4 v1, 0x1

    goto :goto_5

    .line 201
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
