.class Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field final synthetic a:Lme/relex/circleindicator/CircleIndicator;


# direct methods
.method private constructor <init>(Lme/relex/circleindicator/CircleIndicator;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/relex/circleindicator/CircleIndicator;Lme/relex/circleindicator/CircleIndicator$1;)V
    .registers 3

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    .prologue
    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method
