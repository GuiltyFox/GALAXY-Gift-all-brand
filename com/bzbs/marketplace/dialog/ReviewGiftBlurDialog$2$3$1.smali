.class Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3$1;
.super Ljava/lang/Object;
.source "ReviewGiftBlurDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;Landroid/widget/RadioButton;)V
    .registers 3

    .prologue
    .line 191
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3$1;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3$1;->a:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .prologue
    .line 194
    if-eqz p2, :cond_15

    .line 195
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3$1;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3$1;->a:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    :cond_15
    return-void
.end method
