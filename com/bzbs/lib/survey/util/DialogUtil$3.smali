.class final Lcom/bzbs/lib/survey/util/DialogUtil$3;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animation1:Landroid/view/animation/Animation;

.field final synthetic val$animation2:Landroid/view/animation/Animation;

.field final synthetic val$btnSwithToBarcode:Landroid/widget/LinearLayout;

.field final synthetic val$btnSwithToQRCode:Landroid/widget/LinearLayout;

.field final synthetic val$btnSwithToSerial:Landroid/widget/LinearLayout;

.field final synthetic val$contentBarcode:Landroid/widget/LinearLayout;

.field final synthetic val$contentQRCode:Landroid/widget/LinearLayout;

.field final synthetic val$tvSerial4:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V
    .registers 9

    .prologue
    .line 865
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$animation1:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$tvSerial4:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentQRCode:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentBarcode:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$animation2:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 868
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$animation1:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;-><init>(Lcom/bzbs/lib/survey/util/DialogUtil$3;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 895
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    .line 896
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 897
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentBarcode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$animation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 898
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentBarcode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$animation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 904
    :goto_37
    return-void

    .line 900
    :cond_38
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 901
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentQRCode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$animation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 902
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentQRCode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$animation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_37
.end method
