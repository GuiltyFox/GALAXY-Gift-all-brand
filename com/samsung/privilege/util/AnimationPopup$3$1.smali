.class Lcom/samsung/privilege/util/AnimationPopup$3$1;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationPopup$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/AnimationPopup$3;

.field private final synthetic val$pActivity:Landroid/app/Activity;

.field private final synthetic val$pAnimationSet:I

.field private final synthetic val$pLayoutPopup:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/AnimationPopup$3;Landroid/widget/RelativeLayout;ILandroid/app/Activity;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationPopup$3$1;->this$1:Lcom/samsung/privilege/util/AnimationPopup$3;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationPopup$3$1;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iput p3, p0, Lcom/samsung/privilege/util/AnimationPopup$3$1;->val$pAnimationSet:I

    iput-object p4, p0, Lcom/samsung/privilege/util/AnimationPopup$3$1;->val$pActivity:Landroid/app/Activity;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationPopup$3$1;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$3$1;->val$pAnimationSet:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 241
    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationPopup$3$1;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationPopup$3$1;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/MarketPlaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationPopup$3$1;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 246
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_27
    return-void
.end method
