.class Lic/buzzebeeslib/util/AnimationPopup$3$3;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPopup$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/AnimationPopup$3;

.field private final synthetic val$isUseSmallImageFinal:Z

.field private final synthetic val$pActivity:Landroid/app/Activity;

.field private final synthetic val$pAnimationSet:I

.field private final synthetic val$pImagePopup1:Landroid/widget/ImageView;

.field private final synthetic val$pImagePopup2:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$pLayoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$pLayoutPopup:Landroid/widget/RelativeLayout;

.field private final synthetic val$pTvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/AnimationPopup$3;Landroid/widget/RelativeLayout;Landroid/app/Activity;Landroid/widget/ImageView;IZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .registers 11

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->this$1:Lic/buzzebeeslib/util/AnimationPopup$3;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pActivity:Landroid/app/Activity;

    iput-object p4, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pImagePopup1:Landroid/widget/ImageView;

    iput p5, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pAnimationSet:I

    iput-boolean p6, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$isUseSmallImageFinal:Z

    iput-object p7, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pTvNext:Landroid/widget/TextView;

    iput-object p8, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iput-object p9, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pLayoutButton:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pImagePopup2:Landroid/widget/ImageView;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 12
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 298
    iget-object v9, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    new-instance v0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;

    iget-object v2, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pActivity:Landroid/app/Activity;

    iget-object v3, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pImagePopup1:Landroid/widget/ImageView;

    iget v4, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pAnimationSet:I

    iget-boolean v5, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$isUseSmallImageFinal:Z

    iget-object v6, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pTvNext:Landroid/widget/TextView;

    iget-object v7, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pLayoutButton:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;-><init>(Lic/buzzebeeslib/util/AnimationPopup$3$3;Landroid/app/Activity;Landroid/widget/ImageView;IZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    .line 328
    const-wide/16 v1, 0x64

    .line 298
    invoke-virtual {v9, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 334
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 338
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pActivity:Landroid/app/Activity;

    new-instance v1, Lic/buzzebeeslib/util/AnimationPopup$3$3$2;

    iget-object v2, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget-object v3, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3;->val$pLayoutButton:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lic/buzzebeeslib/util/AnimationPopup$3$3$2;-><init>(Lic/buzzebeeslib/util/AnimationPopup$3$3;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method
