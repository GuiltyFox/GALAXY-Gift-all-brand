.class Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;
.super Ljava/lang/Object;
.source "ShowCodeBlurDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;)V
    .registers 2

    .prologue
    .line 417
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 419
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->a:Landroid/widget/TextView;

    const-string/jumbo v1, " XXXXXXX "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    return-void
.end method
