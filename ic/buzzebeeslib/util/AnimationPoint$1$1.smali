.class Lic/buzzebeeslib/util/AnimationPoint$1$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPoint$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/AnimationPoint$1;

.field private final synthetic val$pImgCash1:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash2:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash3:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash4:Landroid/widget/ImageView;

.field private final synthetic val$pImgComma1:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutRoot:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/AnimationPoint$1;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->this$1:Lic/buzzebeeslib/util/AnimationPoint$1;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgCash1:Landroid/widget/ImageView;

    iput-object p4, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgCash2:Landroid/widget/ImageView;

    iput-object p5, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgCash3:Landroid/widget/ImageView;

    iput-object p6, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgCash4:Landroid/widget/ImageView;

    iput-object p7, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgComma1:Landroid/widget/ImageView;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    .line 96
    sget-object v0, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 97
    sget-object v0, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 98
    .local v7, "points":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgCash1:Landroid/widget/ImageView;

    iget-object v3, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgCash2:Landroid/widget/ImageView;

    iget-object v4, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgCash3:Landroid/widget/ImageView;

    iget-object v5, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgCash4:Landroid/widget/ImageView;

    iget-object v6, p0, Lic/buzzebeeslib/util/AnimationPoint$1$1;->val$pImgComma1:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v6}, Lic/buzzebeeslib/util/AnimationPoint;->PlayPointAnimation(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 100
    .end local v7    # "points":Ljava/lang/Integer;
    :cond_26
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 105
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 110
    return-void
.end method
