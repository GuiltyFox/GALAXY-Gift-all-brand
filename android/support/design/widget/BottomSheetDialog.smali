.class public Landroid/support/design/widget/BottomSheetDialog;
.super Landroid/support/v7/app/AppCompatDialog;
.source "BottomSheetDialog.java"


# instance fields
.field private mBottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 44
    invoke-static {p1, p2}, Landroid/support/design/widget/BottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 135
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog$2;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->mBottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 135
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog$2;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->mBottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 50
    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .registers 6

    .prologue
    .line 121
    if-nez p1, :cond_16

    .line 123
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/design/R$attr;->bottomSheetDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 126
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 132
    :cond_16
    :goto_16
    return p1

    .line 129
    :cond_17
    sget p1, Landroid/support/design/R$style;->Theme_Design_Light_BottomSheetDialog:I

    goto :goto_16
.end method

.method private shouldWindowCloseOnTouchOutside()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 108
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_9

    .line 117
    :cond_8
    :goto_8
    return v0

    .line 111
    :cond_9
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 113
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101035b

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 115
    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_8

    :cond_25
    move v0, v1

    .line 117
    goto :goto_8
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .registers 8

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$layout;->design_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    .line 77
    if-eqz p1, :cond_1a

    if-nez p2, :cond_1a

    .line 78
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    :cond_1a
    sget v1, Landroid/support/design/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 81
    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetDialog;->mBottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    .line 82
    if-nez p3, :cond_3f

    .line 83
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    :goto_30
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialog;->shouldWindowCloseOnTouchOutside()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 90
    new-instance v1, Landroid/support/design/widget/BottomSheetDialog$1;

    invoke-direct {v1, p0, v0, p2}, Landroid/support/design/widget/BottomSheetDialog$1;-><init>(Landroid/support/design/widget/BottomSheetDialog;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    :cond_3e
    return-object v0

    .line 85
    :cond_3f
    invoke-virtual {v1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_30
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 62
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0, v0}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 72
    return-void
.end method
