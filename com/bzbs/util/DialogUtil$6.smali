.class final Lcom/bzbs/util/DialogUtil$6;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 297
    iput-object p1, p0, Lcom/bzbs/util/DialogUtil$6;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/bzbs/util/DialogUtil$6;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/bzbs/util/DialogUtil$6;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/bzbs/util/DialogUtil$6;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$6;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 301
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$6;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/util/DialogUtil$6$1;

    invoke-direct {v1, p0}, Lcom/bzbs/util/DialogUtil$6$1;-><init>(Lcom/bzbs/util/DialogUtil$6;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    return-void
.end method
