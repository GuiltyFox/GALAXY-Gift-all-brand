.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field private mCounterEnabled:Z

.field private mCounterMaxLength:I

.field private mCounterOverflowTextAppearance:I

.field private mCounterOverflowed:Z

.field private mCounterTextAppearance:I

.field private mCounterView:Landroid/widget/TextView;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mEditText:Landroid/widget/EditText;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorEnabled:Z

.field private mErrorShown:Z

.field private mErrorTextAppearance:I

.field private mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHasReconstructedEditTextBackground:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mIndicatorArea:Landroid/widget/LinearLayout;

.field private mIndicatorsAdded:I

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 134
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 137
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 138
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 140
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 141
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 144
    sget-object v0, Landroid/support/design/R$styleable;->TextInputLayout:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_TextInputLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintEnabled:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    .line 147
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 148
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    .line 151
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 152
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 156
    :cond_65
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 158
    if-eq v1, v6, :cond_76

    .line 159
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 163
    :cond_76
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_errorTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorTextAppearance:I

    .line 164
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 166
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_counterEnabled:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 168
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_counterMaxLength:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 170
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    .line 172
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowTextAppearance:I

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 177
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 179
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_b5

    .line 182
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 186
    :cond_b5
    new-instance v0, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout$1;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 187
    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/TextInputLayout;Z)V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/design/widget/TextInputLayout;)Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/TextInputLayout;I)V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private addIndicator(Landroid/widget/TextView;I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-nez v0, :cond_38

    .line 437
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    .line 438
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 439
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 443
    new-instance v0, Landroid/support/v4/widget/Space;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    .line 444
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 445
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_38

    .line 448
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->adjustIndicatorPadding()V

    .line 451
    :cond_38
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 453
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    .line 454
    return-void
.end method

.method private adjustIndicatorPadding()V
    .registers 6

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->l(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;IIII)V

    .line 460
    return-void
.end method

.method private animateToExpansionFraction(F)V
    .registers 4

    .prologue
    .line 903
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_b

    .line 919
    :goto_a
    return-void

    .line 906
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v0, :cond_2d

    .line 907
    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 908
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 909
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 910
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$4;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$4;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 917
    :cond_2d
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 918
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    goto :goto_a
.end method

.method private static arrayContains([II)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 959
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_a

    aget v3, p0, v1

    .line 960
    if-ne v3, p1, :cond_b

    .line 961
    const/4 v0, 0x1

    .line 964
    :cond_a
    return v0

    .line 959
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private collapseHint(Z)V
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 881
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 882
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 884
    :cond_13
    if-eqz p1, :cond_1d

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v0, :cond_1d

    .line 885
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 889
    :goto_1c
    return-void

    .line 887
    :cond_1d
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_1c
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .registers 4

    .prologue
    .line 720
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 721
    if-nez v0, :cond_9

    .line 749
    :cond_8
    :goto_8
    return-void

    .line 725
    :cond_9
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v1, :cond_8

    .line 730
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 732
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_25

    .line 735
    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    .line 740
    :cond_25
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v0, :cond_8

    .line 745
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    goto :goto_8
.end method

.method private expandHint(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 892
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 893
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 895
    :cond_12
    if-eqz p1, :cond_1c

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v0, :cond_1c

    .line 896
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 900
    :goto_1b
    return-void

    .line 898
    :cond_1c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_1b
.end method

.method private removeIndicator(Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_18

    .line 464
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 465
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    if-nez v0, :cond_18

    .line 466
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    :cond_18
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .registers 4

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_d
    instance-of v0, p1, Landroid/support/design/widget/TextInputEditText;

    if-nez v0, :cond_1a

    .line 225
    const-string/jumbo v0, "TextInputLayout"

    const-string/jumbo v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1a
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 232
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 233
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 234
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 237
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_53

    .line 255
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 259
    :cond_53
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 260
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 265
    :cond_6e
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v0, :cond_7f

    .line 266
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 269
    :cond_7f
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_86

    .line 270
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->adjustIndicatorPadding()V

    .line 274
    :cond_86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 275
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 345
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 346
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method

.method private updateCounter(I)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    .line 675
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_23

    .line 676
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    .line 687
    :goto_14
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eq v3, v0, :cond_22

    .line 688
    invoke-direct {p0, v2}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 689
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 691
    :cond_22
    return-void

    .line 679
    :cond_23
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    if-le p1, v0, :cond_5e

    move v0, v1

    :goto_28
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    .line 680
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eq v3, v0, :cond_3d

    .line 681
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v0, :cond_60

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowTextAppearance:I

    :goto_3a
    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 684
    :cond_3d
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_5e
    move v0, v2

    .line 679
    goto :goto_28

    .line 681
    :cond_60
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    goto :goto_3a
.end method

.method private updateEditTextBackground()V
    .registers 4

    .prologue
    .line 694
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 696
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 697
    if-nez v0, :cond_c

    .line 717
    :goto_b
    return-void

    .line 701
    :cond_c
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v1, :cond_24

    .line 703
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_b

    .line 706
    :cond_24
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_3c

    .line 708
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_b

    .line 714
    :cond_3c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 715
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    goto :goto_b
.end method

.method private updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 280
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_36

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    :goto_6
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_3d

    .line 283
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_15

    .line 284
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    .line 286
    :cond_15
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 287
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 293
    :goto_35
    return-object p1

    .line 280
    :cond_36
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    goto :goto_6

    .line 290
    :cond_3d
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_35
.end method

.method private updateLabelState(Z)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    move v0, v1

    .line 298
    :goto_13
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v3

    const v4, 0x101009c

    invoke-static {v3, v4}, Landroid/support/design/widget/TextInputLayout;->arrayContains([II)Z

    move-result v3

    .line 299
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 301
    :goto_28
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_37

    .line 302
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(I)V

    .line 305
    :cond_37
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v2, :cond_58

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v2, :cond_58

    .line 306
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    .line 313
    :cond_4a
    :goto_4a
    if-nez v0, :cond_50

    if-nez v3, :cond_50

    if-eqz v1, :cond_7a

    .line 315
    :cond_50
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->collapseHint(Z)V

    .line 320
    :goto_53
    return-void

    :cond_54
    move v0, v2

    .line 297
    goto :goto_13

    :cond_56
    move v1, v2

    .line 299
    goto :goto_28

    .line 307
    :cond_58
    if-eqz v3, :cond_6a

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_6a

    .line 308
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    goto :goto_4a

    .line 309
    :cond_6a
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_4a

    .line 310
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    goto :goto_4a

    .line 318
    :cond_7a
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->expandHint(Z)V

    goto :goto_53
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .prologue
    .line 191
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_13

    move-object v0, p1

    .line 192
    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p3}, Landroid/support/design/widget/TextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :goto_12
    return-void

    .line 196
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 845
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 847
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_c

    .line 848
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 850
    :cond_c
    return-void
.end method

.method public getCounterMaxLength()I
    .registers 2

    .prologue
    .line 670
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 816
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mError:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 358
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isCounterEnabled()Z
    .registers 2

    .prologue
    .line 641
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .prologue
    .line 518
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .registers 2

    .prologue
    .line 828
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    return v0
.end method

.method public isHintEnabled()Z
    .registers 2

    .prologue
    .line 413
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .prologue
    .line 854
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 856
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_59

    .line 857
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 858
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 860
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 866
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 869
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 871
    :cond_59
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 801
    check-cast p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    .line 802
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 803
    iget-object v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 804
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    .line 805
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 791
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 792
    new-instance v1, Landroid/support/design/widget/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 793
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    if-eqz v0, :cond_13

    .line 794
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 796
    :cond_13
    return-object v1
.end method

.method public refreshDrawableState()V
    .registers 2

    .prologue
    .line 875
    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 877
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->E(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 878
    return-void
.end method

.method public setCounterEnabled(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 603
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    if-eq v0, p1, :cond_37

    .line 604
    if-eqz p1, :cond_62

    .line 605
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 606
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 608
    :try_start_17
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_22} :catch_38

    .line 617
    :goto_22
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;I)V

    .line 619
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 620
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_54

    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 629
    :goto_35
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    .line 631
    :cond_37
    return-void

    .line 609
    :catch_38
    move-exception v0

    .line 612
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 614
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$color;->design_textinput_error_color_light:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_22

    .line 623
    :cond_54
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_35

    .line 626
    :cond_62
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    goto :goto_35
.end method

.method public setCounterMaxLength(I)V
    .registers 3

    .prologue
    .line 652
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    if-eq v0, p1, :cond_14

    .line 653
    if-lez p1, :cond_15

    .line 654
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    .line 658
    :goto_8
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    if-eqz v0, :cond_14

    .line 659
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_11
    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 662
    :cond_14
    return-void

    .line 656
    :cond_15
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    goto :goto_8

    .line 659
    :cond_19
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_11
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 533
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mError:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 595
    :cond_f
    :goto_f
    return-void

    .line 538
    :cond_10
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mError:Ljava/lang/CharSequence;

    .line 540
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-nez v0, :cond_1f

    .line 541
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 546
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 550
    :cond_1f
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->E(Landroid/view/View;)Z

    move-result v3

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    .line 553
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    if-eqz v0, :cond_74

    .line 554
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    if-eqz v3, :cond_6b

    .line 558
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_4b

    .line 560
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 562
    :cond_4b
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v2, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v2, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c()V

    .line 593
    :cond_6b
    :goto_6b
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 594
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    goto :goto_f

    :cond_72
    move v0, v2

    .line 551
    goto :goto_2a

    .line 574
    :cond_74
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6b

    .line 575
    if-eqz v3, :cond_9f

    .line 576
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v2, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v2, p0, p1}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c()V

    goto :goto_6b

    .line 588
    :cond_9f
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6b
.end method

.method public setErrorEnabled(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 479
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-eq v0, p1, :cond_3d

    .line 480
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 481
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b()V

    .line 484
    :cond_12
    if-eqz p1, :cond_5a

    .line 485
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 487
    :try_start_1f
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->mErrorTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_3e

    .line 496
    :goto_2a
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;I)V

    .line 499
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 506
    :goto_3b
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    .line 508
    :cond_3d
    return-void

    .line 488
    :catch_3e
    move-exception v0

    .line 491
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 493
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$color;->design_textinput_error_color_light:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2a

    .line 501
    :cond_5a
    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    .line 502
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 503
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    goto :goto_3b
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_c

    .line 339
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 340
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 342
    :cond_c
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .registers 2

    .prologue
    .line 840
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    .line 841
    return-void
.end method

.method public setHintEnabled(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eq p1, v0, :cond_3c

    .line 375
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    .line 377
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 378
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-nez v1, :cond_3d

    .line 379
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 382
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 385
    :cond_26
    invoke-direct {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 398
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3c

    .line 399
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 400
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    :cond_3c
    return-void

    .line 387
    :cond_3d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 390
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 391
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 393
    :cond_4e
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_29
.end method

.method public setHintTextAppearance(I)V
    .registers 4

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 423
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 425
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2d

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 429
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 430
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 433
    :cond_2d
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 207
    return-void
.end method
