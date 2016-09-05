.class final Lcom/bzbs/util/DialogUtil$4;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Dialog;ZLandroid/content/Context;)V
    .registers 4

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bzbs/util/DialogUtil$4;->a:Landroid/app/Dialog;

    iput-boolean p2, p0, Lcom/bzbs/util/DialogUtil$4;->b:Z

    iput-object p3, p0, Lcom/bzbs/util/DialogUtil$4;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$4;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    iget-boolean v0, p0, Lcom/bzbs/util/DialogUtil$4;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 171
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$4;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;Z)V

    .line 173
    :cond_10
    return-void
.end method
