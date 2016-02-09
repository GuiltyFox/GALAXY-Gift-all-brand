.class Lic/buzzebeeslib/util/AnimationPopup$3$3$1;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPopup$3$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/util/AnimationPopup$3$3;

.field private final synthetic val$isUseSmallImageFinal:Z

.field private final synthetic val$pActivity:Landroid/app/Activity;

.field private final synthetic val$pAnimationSet:I

.field private final synthetic val$pImagePopup1:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$pLayoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$pTvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/AnimationPopup$3$3;Landroid/app/Activity;Landroid/widget/ImageView;IZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->this$2:Lic/buzzebeeslib/util/AnimationPopup$3$3;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pActivity:Landroid/app/Activity;

    iput-object p3, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pImagePopup1:Landroid/widget/ImageView;

    iput p4, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pAnimationSet:I

    iput-boolean p5, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$isUseSmallImageFinal:Z

    iput-object p6, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pTvNext:Landroid/widget/TextView;

    iput-object p7, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iput-object p8, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pLayoutButton:Landroid/widget/LinearLayout;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 301
    iget-object v9, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pActivity:Landroid/app/Activity;

    new-instance v0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1$1;

    iget-object v2, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pActivity:Landroid/app/Activity;

    iget-object v3, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pImagePopup1:Landroid/widget/ImageView;

    iget v4, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pAnimationSet:I

    iget-boolean v5, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$isUseSmallImageFinal:Z

    iget-object v6, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pTvNext:Landroid/widget/TextView;

    iget-object v7, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lic/buzzebeeslib/util/AnimationPopup$3$3$1;->val$pLayoutButton:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/util/AnimationPopup$3$3$1$1;-><init>(Lic/buzzebeeslib/util/AnimationPopup$3$3$1;Landroid/app/Activity;Landroid/widget/ImageView;IZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method
