.class public Lcheat/FoxCore;
.super Ljava/lang/Object;
.source "FoxCore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ranImei()Ljava/lang/String;
    .registers 6

    .prologue
    const v5, 0x15f8f

    .line 10
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 11
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit16 v0, v4, 0x2710

    .line 12
    .local v0, "ranInt1":I
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit16 v1, v4, 0x2710

    .line 13
    .local v1, "ranInt2":I
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit16 v2, v4, 0x2710

    .line 14
    .local v2, "ranInt3":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
