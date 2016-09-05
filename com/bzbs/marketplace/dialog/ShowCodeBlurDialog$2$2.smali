.class Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$2;
.super Ljava/lang/Object;
.source "ShowCodeBlurDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 463
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$2;->b:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$2;->b:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    return-void
.end method
