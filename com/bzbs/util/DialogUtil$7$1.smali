.class Lcom/bzbs/util/DialogUtil$7$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/util/DialogUtil$7;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/util/DialogUtil$7;


# direct methods
.method constructor <init>(Lcom/bzbs/util/DialogUtil$7;)V
    .registers 2

    .prologue
    .line 328
    iput-object p1, p0, Lcom/bzbs/util/DialogUtil$7$1;->a:Lcom/bzbs/util/DialogUtil$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$7$1;->a:Lcom/bzbs/util/DialogUtil$7;

    iget-object v0, v0, Lcom/bzbs/util/DialogUtil$7;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/util/DialogUtil$7$1;->a:Lcom/bzbs/util/DialogUtil$7;

    iget-boolean v1, v1, Lcom/bzbs/util/DialogUtil$7;->d:Z

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;Z)V

    .line 332
    return-void
.end method
