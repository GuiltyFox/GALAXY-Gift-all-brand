.class Landroid/support/v7/widget/AppCompatPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AppCompatPopupWindow.java"


# static fields
.field private static final a:Z


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->a:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatPopupWindow;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatPopupWindow;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .prologue
    .line 58
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->PopupWindow:[I

    invoke-static {p1, p2, v0, p3, p4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 60
    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 61
    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatPopupWindow;->a(Z)V

    .line 64
    :cond_18
    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupBackground:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    if-eqz p4, :cond_3b

    const/16 v2, 0xb

    if-ge v1, v2, :cond_3b

    .line 71
    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 72
    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupAnimationStyle:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatPopupWindow;->setAnimationStyle(I)V

    .line 77
    :cond_3b
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_47

    .line 82
    invoke-static {p0}, Landroid/support/v7/widget/AppCompatPopupWindow;->a(Landroid/widget/PopupWindow;)V

    .line 84
    :cond_47
    return-void
.end method

.method private static a(Landroid/widget/PopupWindow;)V
    .registers 5

    .prologue
    .line 116
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "mAnchor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 117
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "mOnScrollChangedListener"

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 121
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 128
    new-instance v3, Landroid/support/v7/widget/AppCompatPopupWindow$1;

    invoke-direct {v3, v1, p0, v0}, Landroid/support/v7/widget/AppCompatPopupWindow$1;-><init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 146
    :goto_28
    return-void

    .line 143
    :catch_29
    move-exception v0

    .line 144
    const-string/jumbo v1, "AppCompatPopupWindow"

    const-string/jumbo v2, "Exception while installing workaround OnScrollChangedListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .prologue
    .line 152
    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->a:Z

    if-eqz v0, :cond_7

    .line 153
    iput-boolean p1, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->b:Z

    .line 157
    :goto_6
    return-void

    .line 155
    :cond_7
    invoke-static {p0, p1}, Landroid/support/v4/widget/PopupWindowCompat;->a(Landroid/widget/PopupWindow;Z)V

    goto :goto_6
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 5

    .prologue
    .line 88
    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->a:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->b:Z

    if-eqz v0, :cond_d

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 92
    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 93
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 98
    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->a:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->b:Z

    if-eqz v0, :cond_d

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 102
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 103
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .registers 12

    .prologue
    .line 107
    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->a:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->b:Z

    if-eqz v0, :cond_17

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    move v3, p3

    :goto_e
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 111
    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 112
    return-void

    :cond_17
    move v3, p3

    goto :goto_e
.end method
