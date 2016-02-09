.class Lic/buzzebeeslib/util/AnimationPoint$2$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPoint$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/AnimationPoint$2;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$pImgCash1:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash2:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash3:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash4:Landroid/widget/ImageView;

.field private final synthetic val$pImgComma1:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutRoot:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/AnimationPoint$2;Landroid/os/Handler;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->this$1:Lic/buzzebeeslib/util/AnimationPoint$2;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgCash1:Landroid/widget/ImageView;

    iput-object p5, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgCash2:Landroid/widget/ImageView;

    iput-object p6, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgCash3:Landroid/widget/ImageView;

    iput-object p7, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgCash4:Landroid/widget/ImageView;

    iput-object p8, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgComma1:Landroid/widget/ImageView;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 11
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 207
    const/4 v0, 0x0

    sput-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    .line 209
    sget-object v0, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 210
    sget-object v0, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 211
    .local v8, "points":Ljava/lang/Integer;
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgCash1:Landroid/widget/ImageView;

    iget-object v4, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgCash2:Landroid/widget/ImageView;

    iget-object v5, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgCash3:Landroid/widget/ImageView;

    iget-object v6, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgCash4:Landroid/widget/ImageView;

    iget-object v7, p0, Lic/buzzebeeslib/util/AnimationPoint$2$1;->val$pImgComma1:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v7}, Lic/buzzebeeslib/util/AnimationPoint;->PlayPointAnimation2(Landroid/os/Handler;ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 213
    .end local v8    # "points":Ljava/lang/Integer;
    :cond_28
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 218
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 223
    return-void
.end method
