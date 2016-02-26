.class Lcom/samsung/privilege/util/DialogSerialVersion2$5;
.super Ljava/lang/Object;
.source "DialogSerialVersion2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialVersion2;->bindingEventSwitchSerial(Landroid/app/Activity;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$animation1:Landroid/view/animation/Animation;

.field private final synthetic val$animation2:Landroid/view/animation/Animation;

.field private final synthetic val$btnSwithToBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$btnSwithToQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$btnSwithToSerial:Landroid/widget/LinearLayout;

.field private final synthetic val$contentBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$contentQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$tvSerialNumber:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$animation1:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$contentBarcode:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$tvSerialNumber:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$contentQRCode:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$animation2:Landroid/view/animation/Animation;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$animation1:Landroid/view/animation/Animation;

    new-instance v0, Lcom/samsung/privilege/util/DialogSerialVersion2$5$1;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$contentQRCode:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$contentBarcode:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$tvSerialNumber:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$animation2:Landroid/view/animation/Animation;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogSerialVersion2$5$1;-><init>(Lcom/samsung/privilege/util/DialogSerialVersion2$5;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 552
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_41

    .line 553
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 554
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$contentBarcode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$animation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 555
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$contentBarcode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$animation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 561
    :goto_40
    return-void

    .line 557
    :cond_41
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$tvSerialNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 558
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$tvSerialNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$animation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 559
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$tvSerialNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$5;->val$animation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_40
.end method
