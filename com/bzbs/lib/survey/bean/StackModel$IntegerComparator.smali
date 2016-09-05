.class public Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;
.super Ljava/lang/Object;
.source "StackModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/bean/StackModel;


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/bean/StackModel;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;->a:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 5

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 164
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;->a(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
