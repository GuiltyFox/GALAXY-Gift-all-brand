.class public Lcom/samsung/privilege/bean/InputItem;
.super Ljava/lang/Object;
.source "InputItem.java"


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "strKey"    # Ljava/lang/String;
    .param p2, "strValue"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/samsung/privilege/bean/InputItem;->key:Ljava/lang/String;

    .line 10
    if-eqz p2, :cond_a

    .line 11
    iput-object p2, p0, Lcom/samsung/privilege/bean/InputItem;->value:Ljava/lang/String;

    .line 15
    :goto_9
    return-void

    .line 13
    :cond_a
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InputItem;->value:Ljava/lang/String;

    goto :goto_9
.end method
