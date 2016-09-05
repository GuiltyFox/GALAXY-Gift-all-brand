.class Lcom/samsung/privilege/util/DialogOTPUtil$1$1;
.super Lcom/samsung/privilege/util/AddOnPermissions;
.source "DialogOTPUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogOTPUtil$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogOTPUtil$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogOTPUtil$1;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    invoke-direct {p0}, Lcom/samsung/privilege/util/AddOnPermissions;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogOTPUtil$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogOTPUtil$1;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogOTPUtil$1;->c:Landroid/app/Dialog;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V

    .line 99
    return-void
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/samsung/privilege/util/AddOnPermissions;->a(Z)V

    .line 89
    if-eqz p1, :cond_15

    .line 90
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogOTPUtil$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogOTPUtil$1;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogOTPUtil$1;->c:Landroid/app/Dialog;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V

    .line 94
    :goto_14
    return-void

    .line 92
    :cond_15
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogOTPUtil$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogOTPUtil$1;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$1$1;->a:Lcom/samsung/privilege/util/DialogOTPUtil$1;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogOTPUtil$1;->c:Landroid/app/Dialog;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V

    goto :goto_14
.end method
