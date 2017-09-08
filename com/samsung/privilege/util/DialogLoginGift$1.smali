.class final Lcom/samsung/privilege/util/DialogLoginGift$1;
.super Lcom/samsung/privilege/util/AddOnPermissions;
.source "DialogLoginGift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/facebook/CallbackManager;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->c:Lcom/facebook/CallbackManager;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/privilege/util/AddOnPermissions;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 8

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/samsung/privilege/util/AddOnPermissions;->a(Z)V

    .line 108
    if-eqz p1, :cond_15

    .line 109
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->c:Lcom/facebook/CallbackManager;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->f:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :goto_14
    return-void

    .line 111
    :cond_15
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$1;->a:Landroid/content/Context;

    const v2, 0x7f0900e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_14
.end method
