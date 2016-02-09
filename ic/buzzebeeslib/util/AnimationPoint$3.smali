.class Lic/buzzebeeslib/util/AnimationPoint$3;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPoint;->PlayPointAnimationFade(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fadeOut:Landroid/view/animation/Animation;

.field private final synthetic val$pImgCash1:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash2:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash3:Landroid/widget/ImageView;

.field private final synthetic val$pImgCash4:Landroid/widget/ImageView;

.field private final synthetic val$pImgComma1:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutRoot:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash1:Landroid/widget/ImageView;

    iput-object p4, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash2:Landroid/widget/ImageView;

    iput-object p5, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash3:Landroid/widget/ImageView;

    iput-object p6, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash4:Landroid/widget/ImageView;

    iput-object p7, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgComma1:Landroid/widget/ImageView;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 15
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x1

    .line 310
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 311
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 313
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 314
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v12, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    new-instance v0, Lic/buzzebeeslib/util/AnimationPoint$3$1;

    iget-object v2, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash1:Landroid/widget/ImageView;

    iget-object v4, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash2:Landroid/widget/ImageView;

    iget-object v5, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash3:Landroid/widget/ImageView;

    iget-object v6, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash4:Landroid/widget/ImageView;

    iget-object v7, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgComma1:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lic/buzzebeeslib/util/AnimationPoint$3$1;-><init>(Lic/buzzebeeslib/util/AnimationPoint$3;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 338
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 339
    .local v8, "frameAnimation1":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 341
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/AnimationDrawable;

    .line 342
    .local v9, "frameAnimation2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 344
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    .line 345
    .local v10, "frameAnimation3":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 347
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$3;->val$pImgCash4:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/AnimationDrawable;

    .line 348
    .local v11, "frameAnimation4":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 349
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 354
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 359
    return-void
.end method
