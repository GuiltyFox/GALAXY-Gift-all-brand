.class Landroid/support/v7/app/AppCompatDelegateImplV7;
.super Landroid/support/v7/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# instance fields
.field private A:Z

.field private B:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private D:Z

.field private E:Z

.field private F:I

.field private final G:Ljava/lang/Runnable;

.field private H:Z

.field private I:Landroid/graphics/Rect;

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/support/v7/app/AppCompatViewInflater;

.field m:Landroid/support/v7/view/ActionMode;

.field n:Landroid/support/v7/widget/ActionBarContextView;

.field o:Landroid/widget/PopupWindow;

.field p:Ljava/lang/Runnable;

.field q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private r:Landroid/support/v7/widget/DecorContentParent;

.field private s:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

.field private t:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

.field private u:Z

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 5

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 124
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Ljava/lang/Runnable;

    .line 147
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;)I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    return v0
.end method

.method private a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1529
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_8

    array-length v1, v0

    if-gt v1, p1, :cond_15

    .line 1530
    :cond_8
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1531
    if-eqz v0, :cond_12

    .line 1532
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1534
    :cond_12
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v0, v1

    .line 1537
    :cond_15
    aget-object v1, v0, p1

    .line 1538
    if-nez v1, :cond_22

    .line 1539
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1541
    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    goto :goto_21
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1516
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1517
    if-eqz v3, :cond_13

    array-length v0, v3

    :goto_6
    move v2, v1

    .line 1518
    :goto_7
    if-ge v2, v0, :cond_19

    .line 1519
    aget-object v1, v3, v2

    .line 1520
    if-eqz v1, :cond_15

    iget-object v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_15

    move-object v0, v1

    .line 1524
    :goto_12
    return-object v0

    :cond_13
    move v0, v1

    .line 1517
    goto :goto_6

    .line 1518
    :cond_15
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    .line 1524
    :cond_19
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .registers 5

    .prologue
    .line 1489
    if-nez p3, :cond_13

    .line 1491
    if-nez p2, :cond_f

    .line 1492
    if-ltz p1, :cond_f

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_f

    .line 1493
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1497
    :cond_f
    if-eqz p2, :cond_13

    .line 1499
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1504
    :cond_13
    if-eqz p2, :cond_1a

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v0, :cond_1a

    .line 1513
    :cond_19
    :goto_19
    return-void

    .line 1507
    :cond_1a
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1511
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_19
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 13

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 1056
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1152
    :cond_e
    :goto_e
    return-void

    .line 1062
    :cond_f
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_34

    .line 1063
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 1064
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1065
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_48

    move v0, v9

    .line 1067
    :goto_25
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4a

    move v4, v9

    .line 1070
    :goto_30
    if-eqz v0, :cond_34

    if-nez v4, :cond_e

    .line 1075
    :cond_34
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->p()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_4c

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1078
    invoke-direct {p0, p1, v9}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_e

    :cond_48
    move v0, v3

    .line 1065
    goto :goto_25

    :cond_4a
    move v4, v3

    .line 1067
    goto :goto_30

    .line 1082
    :cond_4c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1083
    if-eqz v8, :cond_e

    .line 1088
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1093
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_68

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    if-eqz v0, :cond_f2

    .line 1094
    :cond_68
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_e0

    .line 1096
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 1104
    :cond_76
    :goto_76
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1108
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1109
    if-nez v0, :cond_104

    .line 1110
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1113
    :goto_90
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->b:I

    .line 1114
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1116
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1117
    if-eqz v0, :cond_aa

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_aa

    .line 1118
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1120
    :cond_aa
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_be

    .line 1127
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_be
    move v1, v2

    .line 1138
    :cond_bf
    :goto_bf
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 1140
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->d:I

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1147
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1148
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1150
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    iput-boolean v9, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    goto/16 :goto_e

    .line 1098
    :cond_e0
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    if-eqz v0, :cond_76

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_76

    .line 1100
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_76

    .line 1129
    :cond_f2
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_102

    .line 1132
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1133
    if-eqz v0, :cond_102

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_bf

    :cond_102
    move v1, v2

    goto :goto_bf

    :cond_104
    move-object v1, v0

    goto :goto_90
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1392
    if-eqz p2, :cond_1a

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1394
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1421
    :cond_19
    :goto_19
    return-void

    .line 1398
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1399
    if-eqz v0, :cond_3b

    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v1, :cond_3b

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3b

    .line 1400
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1402
    if-eqz p2, :cond_3b

    .line 1403
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-direct {p0, v0, p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1407
    :cond_3b
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1408
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 1409
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    .line 1412
    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    .line 1416
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 1418
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-ne v0, p1, :cond_19

    .line 1419
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    goto :goto_19
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->f(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .registers 4

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method private a(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .prologue
    .line 1374
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    if-eqz v0, :cond_5

    .line 1385
    :goto_4
    return-void

    .line 1378
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    .line 1379
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1380
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->p()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1381
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1382
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1384
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    goto :goto_4
.end method

.method private a(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 9

    .prologue
    const/16 v5, 0x6c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1162
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1166
    :cond_24
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->p()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1168
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_32

    if-nez p2, :cond_75

    .line 1169
    :cond_32
    if-eqz v0, :cond_74

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v1

    if-nez v1, :cond_74

    .line 1171
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Z

    if-eqz v1, :cond_54

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_54

    .line 1173
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1174
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1177
    :cond_54
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1181
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_74

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    if-nez v2, :cond_74

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1183
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1184
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1203
    :cond_74
    :goto_74
    return-void

    .line 1188
    :cond_75
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1189
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v1

    if-nez v1, :cond_74

    .line 1190
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1191
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_74

    .line 1197
    :cond_8a
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1199
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 1200
    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1202
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_74
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .registers 4

    .prologue
    .line 1155
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/content/Context;)V

    .line 1156
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    .line 1157
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    .line 1158
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1546
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1566
    :cond_7
    :goto_7
    return v0

    .line 1554
    :cond_8
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v1, :cond_12

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_12
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_1c

    .line 1556
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1559
    :cond_1c
    if-eqz v0, :cond_7

    .line 1561
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-nez v1, :cond_7

    .line 1562
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_7
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Z)Z
    .registers 2

    .prologue
    .line 92
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Z

    return p1
.end method

.method private a(Landroid/view/ViewParent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 988
    if-nez p1, :cond_5

    move v0, v2

    .line 1006
    :goto_4
    return v0

    .line 992
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, p1

    .line 994
    :goto_c
    if-nez v1, :cond_10

    .line 999
    const/4 v0, 0x1

    goto :goto_4

    .line 1000
    :cond_10
    if-eq v1, v3, :cond_1f

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->G(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    move v0, v2

    .line 1006
    goto :goto_4

    .line 1008
    :cond_21
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_c
.end method

.method static synthetic b(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
    .registers 2

    .prologue
    .line 92
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->x()V

    return-void
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 1206
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 1209
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_d

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_71

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_71

    .line 1211
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1212
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1213
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1215
    const/4 v0, 0x0

    .line 1216
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_6b

    .line 1217
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1218
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1219
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1220
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1227
    :goto_39
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_4f

    .line 1228
    if-nez v0, :cond_4a

    .line 1229
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1230
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1232
    :cond_4a
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_4f
    move-object v2, v0

    .line 1235
    if-eqz v2, :cond_71

    .line 1236
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1237
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1241
    :goto_5f
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1242
    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1243
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1245
    return v5

    .line 1223
    :cond_6b
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_39

    :cond_71
    move-object v0, v1

    goto :goto_5f
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1270
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1370
    :cond_9
    :goto_9
    return v2

    .line 1275
    :cond_a
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v0, :cond_10

    move v2, v1

    .line 1276
    goto :goto_9

    .line 1279
    :cond_10
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eq v0, p1, :cond_1d

    .line 1281
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1284
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->p()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1286
    if-eqz v3, :cond_2b

    .line 1287
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    .line 1290
    :cond_2b
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_35

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_a0

    :cond_35
    move v0, v1

    .line 1293
    :goto_36
    if-eqz v0, :cond_41

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_41

    .line 1296
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v4}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1299
    :cond_41
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-nez v4, :cond_f3

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/app/ToolbarActionBar;

    if-nez v4, :cond_f3

    .line 1303
    :cond_4f
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_57

    iget-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    if-eqz v4, :cond_a4

    .line 1304
    :cond_57
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v4, :cond_65

    .line 1305
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_9

    .line 1310
    :cond_65
    if-eqz v0, :cond_7f

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_7f

    .line 1311
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    if-nez v4, :cond_76

    .line 1312
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-direct {v4, p0, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    .line 1314
    :cond_76
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v4, v5, v6}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1319
    :cond_7f
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1320
    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_a2

    .line 1322
    invoke-virtual {p1, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1324
    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_9

    .line 1326
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_9

    :cond_a0
    move v0, v2

    .line 1290
    goto :goto_36

    .line 1332
    :cond_a2
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    .line 1337
    :cond_a4
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1341
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_b6

    .line 1342
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1343
    iput-object v7, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1347
    :cond_b6
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 1348
    if-eqz v0, :cond_cd

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_cd

    .line 1351
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1353
    :cond_cd
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_9

    .line 1358
    :cond_d4
    if-eqz p2, :cond_fc

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_da
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1360
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_fe

    move v0, v1

    :goto_e5
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    .line 1361
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1362
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1366
    :cond_f3
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1367
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 1368
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move v2, v1

    .line 1370
    goto/16 :goto_9

    .line 1358
    :cond_fc
    const/4 v0, -0x1

    goto :goto_da

    :cond_fe
    move v0, v2

    .line 1360
    goto :goto_e5
.end method

.method static synthetic c(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->g(I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->v()V

    return-void
.end method

.method private c(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1249
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1250
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    .line 1266
    :goto_a
    return v1

    .line 1254
    :cond_b
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_11

    move v1, v2

    .line 1255
    goto :goto_a

    .line 1258
    :cond_11
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    if-nez v0, :cond_1d

    .line 1259
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    .line 1262
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    .line 1264
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    .line 1266
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_2c
    move v1, v0

    goto :goto_a

    :cond_2e
    move v0, v2

    goto :goto_2c
.end method

.method private d(I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1388
    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1389
    return-void
.end method

.method static synthetic d(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)V

    return-void
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 1424
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_14

    .line 1425
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1426
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v1, :cond_14

    .line 1427
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1431
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private e(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1570
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    .line 1572
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Z

    if-nez v0, :cond_19

    .line 1573
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1574
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Z

    .line 1576
    :cond_19
    return-void
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1435
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_8

    move v0, v1

    .line 1484
    :goto_7
    return v0

    .line 1440
    :cond_8
    invoke-direct {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v3

    .line 1441
    if-nez p1, :cond_5b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1444
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1445
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v0

    if-nez v0, :cond_88

    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1446
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v2

    .line 1475
    :goto_40
    if-eqz v2, :cond_52

    .line 1476
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1478
    if-eqz v0, :cond_7e

    .line 1479
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_52
    :goto_52
    move v0, v2

    .line 1484
    goto :goto_7

    .line 1449
    :cond_54
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v2

    goto :goto_40

    .line 1452
    :cond_5b
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v0, :cond_63

    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    if-eqz v0, :cond_6a

    .line 1455
    :cond_63
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    .line 1457
    invoke-direct {p0, v3, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    move v2, v0

    goto :goto_40

    .line 1458
    :cond_6a
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v0, :cond_88

    .line 1460
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    if-eqz v0, :cond_8a

    .line 1463
    iput-boolean v1, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1464
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1467
    :goto_78
    if-eqz v0, :cond_88

    .line 1469
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_40

    .line 1481
    :cond_7e
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_88
    move v2, v1

    goto :goto_40

    :cond_8a
    move v0, v2

    goto :goto_78
.end method

.method private f(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1579
    invoke-direct {p0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1581
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_26

    .line 1582
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1583
    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1584
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1c

    .line 1585
    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1588
    :cond_1c
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1589
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1591
    :cond_26
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    .line 1592
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 1595
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_30

    if-nez p1, :cond_40

    :cond_30
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_40

    .line 1597
    invoke-direct {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1598
    if-eqz v0, :cond_40

    .line 1599
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1600
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1603
    :cond_40
    return-void
.end method

.method private g(I)I
    .registers 10

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1612
    .line 1614
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_be

    .line 1615
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_be

    .line 1616
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1620
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1621
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->I:Landroid/graphics/Rect;

    if-nez v1, :cond_33

    .line 1622
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->I:Landroid/graphics/Rect;

    .line 1623
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->J:Landroid/graphics/Rect;

    .line 1625
    :cond_33
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->I:Landroid/graphics/Rect;

    .line 1626
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->J:Landroid/graphics/Rect;

    .line 1627
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1629
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1630
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_97

    move v1, p1

    .line 1631
    :goto_44
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_bc

    .line 1633
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1635
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/view/View;

    if-nez v1, :cond_99

    .line 1636
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/view/View;

    .line 1637
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1639
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1653
    :goto_75
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/view/View;

    if-eqz v4, :cond_ac

    .line 1659
    :goto_79
    iget-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Z

    if-nez v4, :cond_80

    if-eqz v3, :cond_80

    move p1, v2

    :cond_80
    move v7, v1

    move v1, v3

    move v3, v7

    .line 1669
    :goto_83
    if-eqz v3, :cond_8a

    .line 1670
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8a
    move v0, v1

    .line 1674
    :goto_8b
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/view/View;

    if-eqz v1, :cond_96

    .line 1675
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/view/View;

    if-eqz v0, :cond_b6

    :goto_93
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1678
    :cond_96
    return p1

    :cond_97
    move v1, v2

    .line 1630
    goto :goto_44

    .line 1643
    :cond_99
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1644
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_aa

    .line 1645
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1646
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_aa
    move v1, v3

    goto :goto_75

    :cond_ac
    move v3, v2

    .line 1653
    goto :goto_79

    .line 1664
    :cond_ae
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_b9

    .line 1666
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_83

    .line 1675
    :cond_b6
    const/16 v2, 0x8

    goto :goto_93

    :cond_b9
    move v3, v2

    move v1, v2

    goto :goto_83

    :cond_bc
    move v1, v2

    goto :goto_75

    :cond_be
    move v0, v2

    goto :goto_8b
.end method

.method private h(I)I
    .registers 4

    .prologue
    .line 1689
    const/16 v0, 0x8

    if-ne p1, v0, :cond_10

    .line 1690
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/16 p1, 0x6c

    .line 1699
    :cond_f
    :goto_f
    return p1

    .line 1693
    :cond_10
    const/16 v0, 0x9

    if-ne p1, v0, :cond_f

    .line 1694
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/16 p1, 0x6d

    goto :goto_f
.end method

.method private s()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Z

    if-nez v0, :cond_38

    .line 312
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->t()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    .line 315
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->q()Ljava/lang/CharSequence;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 317
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Ljava/lang/CharSequence;)V

    .line 320
    :cond_18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->u()V

    .line 322
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/ViewGroup;)V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Z

    .line 331
    invoke-direct {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v1

    if-nez v1, :cond_38

    if-eqz v0, :cond_33

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_38

    .line 333
    :cond_33
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)V

    .line 336
    :cond_38
    return-void
.end method

.method private t()Landroid/view/ViewGroup;
    .registers 9

    .prologue
    const v7, 0x1020002

    const/16 v6, 0x6d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 339
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 341
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 342
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_24
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 348
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(I)Z

    .line 353
    :cond_2f
    :goto_2f
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 354
    invoke-virtual {p0, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(I)Z

    .line 356
    :cond_3a
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 357
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(I)Z

    .line 359
    :cond_47
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Z

    .line 360
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 363
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 365
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 369
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Z

    if-nez v1, :cond_13d

    .line 370
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Z

    if-eqz v1, :cond_da

    .line 372
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 376
    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    move-object v2, v0

    .line 457
    :goto_72
    if-nez v2, :cond_173

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_cb
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 351
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(I)Z

    goto/16 :goto_2f

    .line 377
    :cond_da
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v0, :cond_1c5

    .line 383
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 384
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 387
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_13a

    .line 388
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 394
    :goto_fb
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 397
    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/DecorContentParent;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    .line 399
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->p()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 404
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    if-eqz v1, :cond_123

    .line 405
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1, v6}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 407
    :cond_123
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Z

    if-eqz v1, :cond_12d

    .line 408
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 410
    :cond_12d
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Z

    if-eqz v1, :cond_137

    .line 411
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    :cond_137
    move-object v2, v0

    .line 413
    goto/16 :goto_72

    .line 390
    :cond_13a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    goto :goto_fb

    .line 415
    :cond_13d
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Z

    if-eqz v1, :cond_15b

    .line 416
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 422
    :goto_14a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_165

    .line 425
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    move-object v2, v1

    goto/16 :goto_72

    .line 419
    :cond_15b
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_14a

    :cond_165
    move-object v0, v1

    .line 447
    check-cast v0, Landroid/support/v7/widget/FitWindowsViewGroup;

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV7$3;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-interface {v0, v2}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    move-object v2, v1

    goto/16 :goto_72

    .line 468
    :cond_173
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-nez v0, :cond_181

    .line 469
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/widget/TextView;

    .line 473
    :cond_181
    invoke-static {v2}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 475
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 478
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 479
    if-eqz v1, :cond_1b7

    .line 482
    :goto_196
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1a7

    .line 483
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 484
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 485
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_196

    .line 490
    :cond_1a7
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 491
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 495
    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1b7

    .line 496
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 501
    :cond_1b7
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 503
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV7$4;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V

    .line 513
    return-object v2

    :cond_1c5
    move-object v2, v3

    goto/16 :goto_72
.end method

.method private u()V
    .registers 6

    .prologue
    .line 519
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 525
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 530
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 531
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 532
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 534
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 535
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 538
    :cond_4f
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 539
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 542
    :cond_60
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 543
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 546
    :cond_71
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 547
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 550
    :cond_82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 553
    return-void
.end method

.method private v()V
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_9

    .line 842
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b()V

    .line 844
    :cond_9
    return-void
.end method

.method private w()V
    .registers 3

    .prologue
    .line 1682
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Z

    if-eqz v0, :cond_d

    .line 1683
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1686
    :cond_d
    return-void
.end method

.method private x()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1707
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_a

    .line 1708
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1711
    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_29

    .line 1712
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1713
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1715
    :try_start_21
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_3c

    .line 1721
    :cond_26
    :goto_26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    .line 1723
    :cond_29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->v()V

    .line 1725
    invoke-direct {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1726
    if-eqz v0, :cond_3b

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_3b

    .line 1727
    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 1729
    :cond_3b
    return-void

    .line 1716
    :catch_3c
    move-exception v0

    goto :goto_26
.end method


# virtual methods
.method a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 712
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->v()V

    .line 713
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_f

    .line 714
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->c()V

    .line 717
    :cond_f
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    invoke-direct {v4, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 719
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_151

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v0

    if-nez v0, :cond_151

    .line 721
    :try_start_1e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    invoke-interface {v0, v4}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    :try_end_23
    .catch Ljava/lang/AbstractMethodError; {:try_start_1e .. :try_end_23} :catch_3a

    move-result-object v0

    .line 727
    :goto_24
    if-eqz v0, :cond_3d

    .line 728
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    .line 834
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_37

    .line 835
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 837
    :cond_37
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    return-object v0

    .line 722
    :catch_3a
    move-exception v0

    move-object v0, v3

    goto :goto_24

    .line 730
    :cond_3d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_c5

    .line 731
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Z

    if-eqz v0, :cond_12a

    .line 733
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 734
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 735
    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v6, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 738
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_126

    .line 739
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 740
    invoke-virtual {v6, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 741
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 743
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-direct {v0, v7, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 744
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 749
    :goto_79
    new-instance v6, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v6, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 750
    new-instance v6, Landroid/widget/PopupWindow;

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v6, v0, v3, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    .line 752
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/support/v4/widget/PopupWindowCompat;->a(Landroid/widget/PopupWindow;I)V

    .line 754
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 755
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 757
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 759
    iget v5, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 761
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 762
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 763
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Ljava/lang/Runnable;

    .line 797
    :cond_c5
    :goto_c5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_28

    .line 798
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->v()V

    .line 799
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 800
    new-instance v5, Landroid/support/v7/view/StandaloneActionMode;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    if-nez v0, :cond_14b

    move v0, v1

    :goto_e0
    invoke-direct {v5, v6, v7, v4, v0}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    .line 802
    invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 803
    invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->d()V

    .line 804
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 805
    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    .line 806
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 807
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 808
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV7$6;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 826
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_28

    .line 827
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_28

    .line 746
    :cond_126
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    goto/16 :goto_79

    .line 787
    :cond_12a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    .line 789
    if-eqz v0, :cond_c5

    .line 791
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->m()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 792
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_c5

    :cond_14b
    move v0, v2

    .line 800
    goto :goto_e0

    .line 830
    :cond_14d
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_28

    :cond_151
    move-object v0, v3

    goto/16 :goto_24
.end method

.method public a(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->s()V

    .line 230
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    .line 1033
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_7

    .line 1039
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_6
.end method

.method a(ILandroid/view/Menu;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 630
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_f

    .line 631
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_e

    .line 633
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->f(Z)V

    .line 643
    :cond_e
    :goto_e
    return-void

    .line 635
    :cond_f
    if-nez p1, :cond_e

    .line 638
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 639
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v1, :cond_e

    .line 640
    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_e
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 237
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Z

    if-eqz v0, :cond_11

    .line 240
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_11

    .line 242
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->a(Landroid/content/res/Configuration;)V

    .line 247
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->h()Z

    .line 248
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 152
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 154
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 155
    if-nez v0, :cond_1a

    .line 156
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->H:Z

    .line 162
    :cond_19
    :goto_19
    return-void

    .line 158
    :cond_1a
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->d(Z)V

    goto :goto_19
.end method

.method public a(Landroid/support/v7/widget/Toolbar;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_8

    .line 224
    :goto_7
    return-void

    .line 196
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 197
    instance-of v1, v0, Landroid/support/v7/app/WindowDecorActionBar;

    if-eqz v1, :cond_19

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_19
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->g:Landroid/view/MenuInflater;

    .line 208
    if-eqz v0, :cond_20

    .line 209
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->i()V

    .line 212
    :cond_20
    if-eqz p1, :cond_40

    .line 213
    new-instance v1, Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->d:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 215
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    .line 216
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/support/v7/app/ToolbarActionBar;->j()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 223
    :goto_3c
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()V

    goto :goto_7

    .line 218
    :cond_40
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    .line 220
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_3c
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->s()V

    .line 269
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 270
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 271
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 273
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->s()V

    .line 287
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 289
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 291
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 516
    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 866
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 867
    if-eqz v2, :cond_f

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/ActionBar;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 897
    :cond_e
    :goto_e
    return v0

    .line 873
    :cond_f
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v2, :cond_28

    .line 874
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 876
    if-eqz v2, :cond_28

    .line 877
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v1, :cond_e

    .line 878
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    goto :goto_e

    .line 888
    :cond_28
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-nez v2, :cond_3f

    .line 889
    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    .line 890
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 891
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 892
    iput-boolean v1, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 893
    if-nez v3, :cond_e

    :cond_3f
    move v0, v1

    .line 897
    goto :goto_e
.end method

.method a(Landroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 902
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_12

    .line 904
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 913
    :goto_11
    return v0

    .line 909
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 910
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 911
    if-nez v2, :cond_23

    .line 913
    :goto_1c
    if-eqz v0, :cond_25

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11

    .line 911
    :cond_23
    const/4 v0, 0x0

    goto :goto_1c

    .line 913
    :cond_25
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public b(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 5

    .prologue
    .line 676
    if-nez p1, :cond_b

    .line 677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_14

    .line 681
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->c()V

    .line 684
    :cond_14
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 686
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 687
    if-eqz v1, :cond_34

    .line 688
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    .line 689
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_34

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v1, :cond_34

    .line 690
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-interface {v1, v2}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 694
    :cond_34
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-nez v1, :cond_3e

    .line 696
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    .line 699
    :cond_3e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    .line 1044
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_11

    .line 1045
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_11

    .line 1051
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 277
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->s()V

    .line 278
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 279
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 280
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 281
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 282
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->s()V

    .line 168
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .prologue
    .line 295
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->s()V

    .line 296
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 297
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 299
    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 619
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_a

    .line 620
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 626
    :cond_9
    :goto_9
    return-void

    .line 621
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 622
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->b(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 623
    :cond_18
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 624
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 917
    sparse-switch p1, :sswitch_data_26

    :cond_5
    move v0, v1

    .line 940
    :cond_6
    :goto_6
    return v0

    .line 919
    :sswitch_7
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(ILandroid/view/KeyEvent;)Z

    goto :goto_6

    .line 922
    :sswitch_b
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Z

    .line 923
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Z

    .line 925
    invoke-direct {p0, v1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v3

    .line 926
    if-eqz v3, :cond_1f

    iget-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v4, :cond_1f

    .line 927
    if-nez v2, :cond_6

    .line 931
    invoke-direct {p0, v3, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_6

    .line 935
    :cond_1f
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->r()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_6

    .line 917
    :sswitch_data_26
    .sparse-switch
        0x4 -> :sswitch_b
        0x52 -> :sswitch_7
    .end sparse-switch
.end method

.method b(ILandroid/view/Menu;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 647
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_f

    .line 648
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 649
    if-eqz v1, :cond_e

    .line 650
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->f(Z)V

    .line 654
    :cond_e
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 971
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2f

    move v6, v7

    .line 973
    :goto_9
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->K:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_14

    .line 974
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->K:Landroid/support/v7/app/AppCompatViewInflater;

    .line 978
    :cond_14
    if-eqz v6, :cond_31

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/ViewParent;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v5, v7

    .line 980
    :goto_20
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->K:Landroid/support/v7/app/AppCompatViewInflater;

    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_2f
    move v6, v1

    .line 971
    goto :goto_9

    :cond_31
    move v5, v1

    .line 978
    goto :goto_20
.end method

.method public c()V
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_a

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->e(Z)V

    .line 256
    :cond_a
    return-void
.end method

.method public c(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 557
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->h(I)I

    move-result v2

    .line 559
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Z

    if-eqz v3, :cond_f

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_f

    .line 594
    :goto_e
    return v0

    .line 562
    :cond_f
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v3, :cond_17

    if-ne v2, v1, :cond_17

    .line 564
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    .line 567
    :cond_17
    sparse-switch v2, :sswitch_data_4c

    .line 594
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_e

    .line 569
    :sswitch_21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->w()V

    .line 570
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    move v0, v1

    .line 571
    goto :goto_e

    .line 573
    :sswitch_28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->w()V

    .line 574
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    move v0, v1

    .line 575
    goto :goto_e

    .line 577
    :sswitch_2f
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->w()V

    .line 578
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Z

    move v0, v1

    .line 579
    goto :goto_e

    .line 581
    :sswitch_36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->w()V

    .line 582
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Z

    move v0, v1

    .line 583
    goto :goto_e

    .line 585
    :sswitch_3d
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->w()V

    .line 586
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Z

    move v0, v1

    .line 587
    goto :goto_e

    .line 589
    :sswitch_44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->w()V

    .line 590
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Z

    move v0, v1

    .line 591
    goto :goto_e

    .line 567
    nop

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_44
        0x2 -> :sswitch_36
        0x5 -> :sswitch_3d
        0xa -> :sswitch_2f
        0x6c -> :sswitch_21
        0x6d -> :sswitch_28
    .end sparse-switch
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 944
    sparse-switch p1, :sswitch_data_22

    .line 960
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_e

    .line 963
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/view/KeyEvent;)Z

    :cond_e
    move v0, v1

    .line 965
    :goto_f
    return v0

    .line 946
    :sswitch_10
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(ILandroid/view/KeyEvent;)Z

    goto :goto_f

    .line 954
    :sswitch_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1f

    :goto_1c
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Z

    goto :goto_5

    :cond_1f
    move v0, v1

    goto :goto_1c

    .line 944
    nop

    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_14
        0x52 -> :sswitch_10
    .end sparse-switch
.end method

.method public d()V
    .registers 3

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_a

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->e(Z)V

    .line 264
    :cond_a
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 704
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 708
    :goto_c
    return-void

    .line 707
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)V

    goto :goto_c
.end method

.method public f()V
    .registers 2

    .prologue
    .line 303
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->f()V

    .line 305
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_c

    .line 306
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->i()V

    .line 308
    :cond_c
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1016
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 1024
    :cond_f
    :goto_f
    return-void

    .line 1018
    :cond_10
    invoke-static {v0}, Landroid/support/v4/view/LayoutInflaterCompat;->a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;

    if-nez v0, :cond_f

    .line 1020
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public k()V
    .registers 4

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->s()V

    .line 174
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_c

    .line 187
    :cond_b
    :goto_b
    return-void

    .line 178
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    .line 179
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    .line 184
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_b

    .line 185
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->H:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->d(Z)V

    goto :goto_b

    .line 181
    :cond_2b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_1f

    .line 182
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    goto :goto_1f
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->p()Landroid/view/Window$Callback;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->o()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 661
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 662
    if-eqz v1, :cond_1d

    .line 663
    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 666
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .prologue
    .line 671
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 672
    return-void
.end method

.method r()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 848
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_b

    .line 849
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->c()V

    .line 860
    :cond_a
    :goto_a
    return v0

    .line 854
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 855
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->g()Z

    move-result v1

    if-nez v1, :cond_a

    .line 860
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method
