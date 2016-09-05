.class public final Lcom/fasterxml/jackson/core/sym/Name3;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "Name3.java"


# instance fields
.field private final q1:I

.field private final q2:I

.field private final q3:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .registers 6

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q1:I

    .line 15
    iput p4, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q2:I

    .line 16
    iput p5, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q3:I

    .line 17
    return-void
.end method


# virtual methods
.method public equals(I)Z
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .registers 4

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public equals([II)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x3

    if-ne p2, v2, :cond_19

    aget v2, p1, v1

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q1:I

    if-ne v2, v3, :cond_19

    aget v2, p1, v0

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q2:I

    if-ne v2, v3, :cond_19

    const/4 v2, 0x2

    aget v2, p1, v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q3:I

    if-ne v2, v3, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method
