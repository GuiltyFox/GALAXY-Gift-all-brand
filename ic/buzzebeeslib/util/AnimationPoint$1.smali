.class Lic/buzzebeeslib/util/AnimationPoint$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPoint;->PlayPointAnimation(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$pImgCash1:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash2:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash3:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash4:Landroid/widget/ImageView;

.field private final synthetic val$pImgComma1:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutRoot:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash1:Landroid/widget/ImageView;

    iput-object p3, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash2:Landroid/widget/ImageView;

    iput-object p4, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash3:Landroid/widget/ImageView;

    iput-object p5, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash4:Landroid/widget/ImageView;

    iput-object p6, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgComma1:Landroid/widget/ImageView;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 15
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x1

    .line 82
    # invokes: Lic/buzzebeeslib/util/AnimationPoint;->outToTopAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPoint;->access$0()Landroid/view/animation/Animation;

    move-result-object v8

    .line 83
    .local v8, "animationOutToTop":Landroid/view/animation/Animation;
    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 84
    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 85
    const-wide/16 v0, 0x1f4

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    const-wide/16 v0, 0x3e8

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 88
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 89
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 91
    new-instance v0, Lic/buzzebeeslib/util/AnimationPoint$1$1;

    iget-object v2, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash1:Landroid/widget/ImageView;

    iget-object v4, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash2:Landroid/widget/ImageView;

    iget-object v5, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash3:Landroid/widget/ImageView;

    iget-object v6, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash4:Landroid/widget/ImageView;

    iget-object v7, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgComma1:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lic/buzzebeeslib/util/AnimationPoint$1$1;-><init>(Lic/buzzebeeslib/util/AnimationPoint$1;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/AnimationDrawable;

    .line 114
    .local v9, "frameAnimation1":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 116
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    .line 117
    .local v10, "frameAnimation2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 119
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/AnimationDrawable;

    .line 120
    .local v11, "frameAnimation3":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 122
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$1;->val$pImgCash4:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/AnimationDrawable;

    .line 123
    .local v12, "frameAnimation4":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 124
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 129
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 134
    return-void
.end method
