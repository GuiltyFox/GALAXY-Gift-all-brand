.class Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SwitchCompat.java"


# instance fields
.field final a:F

.field final b:F

.field final c:F

.field final synthetic d:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .registers 5

    .prologue
    .line 1164
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->d:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1165
    iput p2, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->a:F

    .line 1166
    iput p3, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->b:F

    .line 1167
    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->c:F

    .line 1168
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SwitchCompat;FFLandroid/support/v7/widget/SwitchCompat$1;)V
    .registers 5

    .prologue
    .line 1159
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->d:Landroid/support/v7/widget/SwitchCompat;

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->a:F

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    # invokes: Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->access$200(Landroid/support/v7/widget/SwitchCompat;F)V

    .line 1173
    return-void
.end method
