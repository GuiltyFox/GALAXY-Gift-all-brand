.class Landroid/support/v7/app/AppCompatDelegateImplV9;
.super Landroid/support/v7/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# instance fields
.field private A:Z

.field private B:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field private C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

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

.field private s:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

.field private t:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

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
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 125
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->G:Ljava/lang/Runnable;

    .line 148
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV9;)I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->F:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .registers 3

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1549
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1550
    if-eqz v3, :cond_13

    array-length v0, v3

    :goto_6
    move v2, v1

    .line 1551
    :goto_7
    if-ge v2, v0, :cond_19

    .line 1552
    aget-object v1, v3, v2

    .line 1553
    if-eqz v1, :cond_15

    iget-object v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_15

    move-object v0, v1

    .line 1557
    :goto_12
    return-object v0

    :cond_13
    move v0, v1

    .line 1550
    goto :goto_6

    .line 1551
    :cond_15
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    .line 1557
    :cond_19
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private a(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .registers 5

    .prologue
    .line 1522
    if-nez p3, :cond_13

    .line 1524
    if-nez p2, :cond_f

    .line 1525
    if-ltz p1, :cond_f

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_f

    .line 1526
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1530
    :cond_f
    if-eqz p2, :cond_13

    .line 1532
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1537
    :cond_13
    if-eqz p2, :cond_1a

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-nez v0, :cond_1a

    .line 1546
    :cond_19
    :goto_19
    return-void

    .line 1540
    :cond_1a
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1544
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_19
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 13

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 1089
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1185
    :cond_e
    :goto_e
    return-void

    .line 1095
    :cond_f
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    if-nez v0, :cond_34

    .line 1096
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    .line 1097
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1098
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_48

    move v0, v9

    .line 1100
    :goto_25
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4a

    move v4, v9

    .line 1103
    :goto_30
    if-eqz v0, :cond_34

    if-nez v4, :cond_e

    .line 1108
    :cond_34
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->q()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1109
    if-eqz v0, :cond_4c

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1111
    invoke-direct {p0, p1, v9}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_e

    :cond_48
    move v0, v3

    .line 1098
    goto :goto_25

    :cond_4a
    move v4, v3

    .line 1100
    goto :goto_30

    .line 1115
    :cond_4c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1116
    if-eqz v8, :cond_e

    .line 1121
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1126
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_68

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    if-eqz v0, :cond_f2

    .line 1127
    :cond_68
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_e0

    .line 1129
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 1137
    :cond_76
    :goto_76
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->c(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1141
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1142
    if-nez v0, :cond_104

    .line 1143
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1146
    :goto_90
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->b:I

    .line 1147
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1149
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_aa

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_aa

    .line 1151
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1153
    :cond_aa
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_be

    .line 1160
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_be
    move v1, v2

    .line 1171
    :cond_bf
    :goto_bf
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    .line 1173
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->d:I

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1180
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1181
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1183
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    iput-boolean v9, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    goto/16 :goto_e

    .line 1131
    :cond_e0
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    if-eqz v0, :cond_76

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_76

    .line 1133
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_76

    .line 1162
    :cond_f2
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_102

    .line 1165
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1166
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

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1425
    if-eqz p2, :cond_1a

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    .line 1426
    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1427
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1454
    :cond_19
    :goto_19
    return-void

    .line 1431
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1432
    if-eqz v0, :cond_3b

    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-eqz v1, :cond_3b

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3b

    .line 1433
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1435
    if-eqz p2, :cond_3b

    .line 1436
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    invoke-direct {p0, v0, p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1440
    :cond_3b
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    .line 1441
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    .line 1442
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    .line 1445
    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    .line 1451
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-ne v0, p1, :cond_19

    .line 1452
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    goto :goto_19
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV9;I)V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->f(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV9;ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .registers 4

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .registers 3

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method private a(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .prologue
    .line 1407
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->A:Z

    if-eqz v0, :cond_5

    .line 1418
    :goto_4
    return-void

    .line 1411
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->A:Z

    .line 1412
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1413
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->q()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1414
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1415
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1417
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->A:Z

    goto :goto_4
.end method

.method private a(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 9

    .prologue
    const/16 v5, 0x6c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1195
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    .line 1196
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    .line 1197
    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1199
    :cond_24
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->q()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1201
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_32

    if-nez p2, :cond_75

    .line 1202
    :cond_32
    if-eqz v0, :cond_74

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v1

    if-nez v1, :cond_74

    .line 1204
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->E:Z

    if-eqz v1, :cond_54

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->F:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_54

    .line 1206
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1207
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->G:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1210
    :cond_54
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1214
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_74

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    if-nez v2, :cond_74

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1215
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1216
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1217
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1236
    :cond_74
    :goto_74
    return-void

    .line 1221
    :cond_75
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1222
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v1

    if-nez v1, :cond_74

    .line 1223
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1224
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_74

    .line 1230
    :cond_8a
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1232
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    .line 1233
    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1235
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_74
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .registers 4

    .prologue
    .line 1188
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a(Landroid/content/Context;)V

    .line 1189
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    .line 1190
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->c:I

    .line 1191
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1579
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1599
    :cond_7
    :goto_7
    return v0

    .line 1587
    :cond_8
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    if-nez v1, :cond_12

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_12
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_1c

    .line 1589
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1592
    :cond_1c
    if-eqz v0, :cond_7

    .line 1594
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-nez v1, :cond_7

    .line 1595
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_7
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV9;Z)Z
    .registers 2

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->E:Z

    return p1
.end method

.method private a(Landroid/view/ViewParent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1021
    if-nez p1, :cond_5

    move v0, v2

    .line 1039
    :goto_4
    return v0

    .line 1025
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, p1

    .line 1027
    :goto_c
    if-nez v1, :cond_10

    .line 1032
    const/4 v0, 0x1

    goto :goto_4

    .line 1033
    :cond_10
    if-eq v1, v3, :cond_1f

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 1034
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->G(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    move v0, v2

    .line 1039
    goto :goto_4

    .line 1041
    :cond_21
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_c
.end method

.method static synthetic b(Landroid/support/v7/app/AppCompatDelegateImplV9;I)I
    .registers 2

    .prologue
    .line 93
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->F:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->z()V

    return-void
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 1239
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    .line 1242
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    if-eqz v0, :cond_d

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_71

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_71

    .line 1244
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1245
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1246
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1248
    const/4 v0, 0x0

    .line 1249
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_6b

    .line 1250
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1251
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1252
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1253
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1260
    :goto_39
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_4f

    .line 1261
    if-nez v0, :cond_4a

    .line 1262
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1263
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1265
    :cond_4a
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_4f
    move-object v2, v0

    .line 1268
    if-eqz v2, :cond_71

    .line 1269
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1270
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1274
    :goto_5f
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1275
    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1276
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1278
    return v5

    .line 1256
    :cond_6b
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_39

    :cond_71
    move-object v0, v1

    goto :goto_5f
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1303
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1403
    :cond_9
    :goto_9
    return v2

    .line 1308
    :cond_a
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    if-eqz v0, :cond_10

    move v2, v1

    .line 1309
    goto :goto_9

    .line 1312
    :cond_10
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eq v0, p1, :cond_1d

    .line 1314
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1317
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->q()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1319
    if-eqz v3, :cond_2b

    .line 1320
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    .line 1323
    :cond_2b
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    if-eqz v0, :cond_35

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_a0

    :cond_35
    move v0, v1

    .line 1326
    :goto_36
    if-eqz v0, :cond_41

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_41

    .line 1329
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v4}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1332
    :cond_41
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    if-nez v4, :cond_f3

    if-eqz v0, :cond_4f

    .line 1333
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->m()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/app/ToolbarActionBar;

    if-nez v4, :cond_f3

    .line 1336
    :cond_4f
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_57

    iget-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    if-eqz v4, :cond_a4

    .line 1337
    :cond_57
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v4, :cond_65

    .line 1338
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_9

    .line 1343
    :cond_65
    if-eqz v0, :cond_7f

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_7f

    .line 1344
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    if-nez v4, :cond_76

    .line 1345
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-direct {v4, p0, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$1;)V

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    .line 1347
    :cond_76
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v4, v5, v6}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1352
    :cond_7f
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1353
    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_a2

    .line 1355
    invoke-virtual {p1, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1357
    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_9

    .line 1359
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_9

    :cond_a0
    move v0, v2

    .line 1323
    goto :goto_36

    .line 1365
    :cond_a2
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    .line 1370
    :cond_a4
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1374
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_b6

    .line 1375
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1376
    iput-object v7, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1380
    :cond_b6
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 1381
    if-eqz v0, :cond_cd

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_cd

    .line 1384
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1386
    :cond_cd
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_9

    .line 1391
    :cond_d4
    if-eqz p2, :cond_fc

    .line 1392
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 1391
    :goto_da
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_fe

    move v0, v1

    :goto_e5
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->p:Z

    .line 1394
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->p:Z

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1395
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1399
    :cond_f3
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    .line 1400
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    .line 1401
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move v2, v1

    .line 1403
    goto/16 :goto_9

    .line 1392
    :cond_fc
    const/4 v0, -0x1

    goto :goto_da

    :cond_fe
    move v0, v2

    .line 1393
    goto :goto_e5
.end method

.method static synthetic c(Landroid/support/v7/app/AppCompatDelegateImplV9;I)I
    .registers 3

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->g(I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->x()V

    return-void
.end method

.method private c(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1282
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1283
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    .line 1299
    :goto_a
    return v1

    .line 1287
    :cond_b
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_11

    move v1, v2

    .line 1288
    goto :goto_a

    .line 1291
    :cond_11
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->t:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    if-nez v0, :cond_1d

    .line 1292
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$1;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->t:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    .line 1295
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->t:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    .line 1297
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    .line 1299
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

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

    .line 1421
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1422
    return-void
.end method

.method static synthetic d(Landroid/support/v7/app/AppCompatDelegateImplV9;I)V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->d(I)V

    return-void
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 1457
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_14

    .line 1458
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1459
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-nez v1, :cond_14

    .line 1460
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1464
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

    .line 1603
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->F:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->F:I

    .line 1605
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->E:Z

    if-nez v0, :cond_19

    .line 1606
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->G:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1607
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->E:Z

    .line 1609
    :cond_19
    return-void
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1468
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_8

    move v0, v1

    .line 1517
    :goto_7
    return v0

    .line 1473
    :cond_8
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 1474
    if-nez p1, :cond_5b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    .line 1475
    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    .line 1476
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1477
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1478
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v0

    if-nez v0, :cond_88

    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1479
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v2

    .line 1508
    :goto_40
    if-eqz v2, :cond_52

    .line 1509
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1511
    if-eqz v0, :cond_7e

    .line 1512
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_52
    :goto_52
    move v0, v2

    .line 1517
    goto :goto_7

    .line 1482
    :cond_54
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v2

    goto :goto_40

    .line 1485
    :cond_5b
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-nez v0, :cond_63

    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    if-eqz v0, :cond_6a

    .line 1488
    :cond_63
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    .line 1490
    invoke-direct {p0, v3, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    move v2, v0

    goto :goto_40

    .line 1491
    :cond_6a
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    if-eqz v0, :cond_88

    .line 1493
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    if-eqz v0, :cond_8a

    .line 1496
    iput-boolean v1, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    .line 1497
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1500
    :goto_78
    if-eqz v0, :cond_88

    .line 1502
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_40

    .line 1514
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

    .line 1612
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1614
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_26

    .line 1615
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1616
    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1617
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1c

    .line 1618
    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1621
    :cond_1c
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1622
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1624
    :cond_26
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    .line 1625
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    .line 1628
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_30

    if-nez p1, :cond_40

    :cond_30
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_40

    .line 1630
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1631
    if-eqz v0, :cond_40

    .line 1632
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    .line 1633
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1636
    :cond_40
    return-void
.end method

.method private g(I)I
    .registers 10

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1645
    .line 1647
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_be

    .line 1648
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_be

    .line 1649
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 1650
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1653
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1654
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/graphics/Rect;

    if-nez v1, :cond_33

    .line 1655
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/graphics/Rect;

    .line 1656
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->J:Landroid/graphics/Rect;

    .line 1658
    :cond_33
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/graphics/Rect;

    .line 1659
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->J:Landroid/graphics/Rect;

    .line 1660
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1662
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1663
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_97

    move v1, p1

    .line 1664
    :goto_44
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_bc

    .line 1666
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1668
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/view/View;

    if-nez v1, :cond_99

    .line 1669
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/view/View;

    .line 1670
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1671
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1670
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1672
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1686
    :goto_75
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/view/View;

    if-eqz v4, :cond_ac

    .line 1692
    :goto_79
    iget-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->j:Z

    if-nez v4, :cond_80

    if-eqz v3, :cond_80

    move p1, v2

    :cond_80
    move v7, v1

    move v1, v3

    move v3, v7

    .line 1702
    :goto_83
    if-eqz v3, :cond_8a

    .line 1703
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8a
    move v0, v1

    .line 1707
    :goto_8b
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/view/View;

    if-eqz v1, :cond_96

    .line 1708
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/view/View;

    if-eqz v0, :cond_b6

    :goto_93
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1711
    :cond_96
    return p1

    :cond_97
    move v1, v2

    .line 1663
    goto :goto_44

    .line 1676
    :cond_99
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1677
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_aa

    .line 1678
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1679
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_aa
    move v1, v3

    goto :goto_75

    :cond_ac
    move v3, v2

    .line 1686
    goto :goto_79

    .line 1697
    :cond_ae
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_b9

    .line 1699
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_83

    .line 1708
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
    .line 1722
    const/16 v0, 0x8

    if-ne p1, v0, :cond_10

    .line 1723
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/16 p1, 0x6c

    .line 1732
    :cond_f
    :goto_f
    return p1

    .line 1726
    :cond_10
    const/16 v0, 0x9

    if-ne p1, v0, :cond_f

    .line 1727
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const/16 p1, 0x6d

    goto :goto_f
.end method

.method private u()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->u:Z

    if-nez v0, :cond_38

    .line 316
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->v()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    .line 319
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->r()Ljava/lang/CharSequence;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 321
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Ljava/lang/CharSequence;)V

    .line 324
    :cond_18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->w()V

    .line 326
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/view/ViewGroup;)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->u:Z

    .line 335
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v1

    if-nez v1, :cond_38

    if-eqz v0, :cond_33

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_38

    .line 337
    :cond_33
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)V

    .line 340
    :cond_38
    return-void
.end method

.method private v()Landroid/view/ViewGroup;
    .registers 9

    .prologue
    const v7, 0x1020002

    const/16 v6, 0x6d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 343
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 345
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 346
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_24
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 352
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->c(I)Z

    .line 357
    :cond_2f
    :goto_2f
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 358
    invoke-virtual {p0, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->c(I)Z

    .line 360
    :cond_3a
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 361
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->c(I)Z

    .line 363
    :cond_47
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->k:Z

    .line 364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 369
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 373
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->l:Z

    if-nez v1, :cond_13d

    .line 374
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->k:Z

    if-eqz v1, :cond_da

    .line 376
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 380
    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->i:Z

    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->h:Z

    move-object v2, v0

    .line 461
    :goto_72
    if-nez v2, :cond_173

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_cb
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 355
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->c(I)Z

    goto/16 :goto_2f

    .line 381
    :cond_da
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->h:Z

    if-eqz v0, :cond_1c5

    .line 387
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 388
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 391
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_13a

    .line 392
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 398
    :goto_fb
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    .line 399
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 401
    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/DecorContentParent;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    .line 403
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->q()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 408
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->i:Z

    if-eqz v1, :cond_123

    .line 409
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1, v6}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 411
    :cond_123
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->y:Z

    if-eqz v1, :cond_12d

    .line 412
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 414
    :cond_12d
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Z

    if-eqz v1, :cond_137

    .line 415
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    :cond_137
    move-object v2, v0

    .line 417
    goto/16 :goto_72

    .line 394
    :cond_13a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    goto :goto_fb

    .line 419
    :cond_13d
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->j:Z

    if-eqz v1, :cond_15b

    .line 420
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 426
    :goto_14a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_165

    .line 429
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    move-object v2, v1

    goto/16 :goto_72

    .line 423
    :cond_15b
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_14a

    :cond_165
    move-object v0, v1

    .line 451
    check-cast v0, Landroid/support/v7/widget/FitWindowsViewGroup;

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV9$3;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-interface {v0, v2}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    move-object v2, v1

    goto/16 :goto_72

    .line 472
    :cond_173
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-nez v0, :cond_181

    .line 473
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/widget/TextView;

    .line 477
    :cond_181
    invoke-static {v2}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 479
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 482
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 483
    if-eqz v1, :cond_1b7

    .line 486
    :goto_196
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1a7

    .line 487
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 488
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 489
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_196

    .line 494
    :cond_1a7
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 495
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 499
    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1b7

    .line 500
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    :cond_1b7
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 507
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$4;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V

    .line 517
    return-object v2

    :cond_1c5
    move-object v2, v3

    goto/16 :goto_72
.end method

.method private w()V
    .registers 6

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 529
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 530
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 531
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 532
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 530
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 534
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 535
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 536
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 538
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 539
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 540
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 539
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 542
    :cond_4f
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 543
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 544
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 543
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 546
    :cond_60
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 547
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 548
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 547
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 550
    :cond_71
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 551
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 552
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 551
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 554
    :cond_82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 557
    return-void
.end method

.method private x()V
    .registers 2

    .prologue
    .line 874
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_9

    .line 875
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b()V

    .line 877
    :cond_9
    return-void
.end method

.method private y()V
    .registers 3

    .prologue
    .line 1715
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->u:Z

    if-eqz v0, :cond_d

    .line 1716
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1719
    :cond_d
    return-void
.end method

.method private z()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1740
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_a

    .line 1741
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1744
    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_29

    .line 1745
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1746
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1748
    :try_start_21
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_3c

    .line 1754
    :cond_26
    :goto_26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    .line 1756
    :cond_29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->x()V

    .line 1758
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1759
    if-eqz v0, :cond_3b

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_3b

    .line 1760
    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 1762
    :cond_3b
    return-void

    .line 1749
    :catch_3c
    move-exception v0

    goto :goto_26
.end method


# virtual methods
.method protected a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1562
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v0, :cond_8

    array-length v1, v0

    if-gt v1, p1, :cond_15

    .line 1563
    :cond_8
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1564
    if-eqz v0, :cond_12

    .line 1565
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1567
    :cond_12
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v0, v1

    .line 1570
    :cond_15
    aget-object v1, v0, p1

    .line 1571
    if-nez v1, :cond_22

    .line 1572
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1574
    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    goto :goto_21
.end method

.method a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 716
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->x()V

    .line 717
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_11

    .line 718
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->c()V

    .line 721
    :cond_11
    instance-of v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    if-nez v0, :cond_1b

    .line 723
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    move-object p1, v0

    .line 727
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_181

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v0

    if-nez v0, :cond_181

    .line 729
    :try_start_25
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->e:Landroid/support/v7/app/AppCompatCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    :try_end_2a
    .catch Ljava/lang/AbstractMethodError; {:try_start_25 .. :try_end_2a} :catch_41

    move-result-object v0

    .line 735
    :goto_2b
    if-eqz v0, :cond_44

    .line 736
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    .line 861
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_3e

    .line 862
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->e:Landroid/support/v7/app/AppCompatCallback;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 864
    :cond_3e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    return-object v0

    .line 730
    :catch_41
    move-exception v0

    move-object v0, v3

    goto :goto_2b

    .line 738
    :cond_44
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_cc

    .line 739
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->k:Z

    if-eqz v0, :cond_135

    .line 741
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 742
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 743
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 746
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_131

    .line 747
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 748
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 749
    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 751
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-direct {v0, v6, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 752
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 757
    :goto_80
    new-instance v5, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 758
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v5, v0, v3, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    .line 760
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/support/v4/widget/PopupWindowCompat;->a(Landroid/widget/PopupWindow;I)V

    .line 762
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 763
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 765
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 767
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 768
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 767
    invoke-static {v4, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 769
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 770
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 771
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->p:Ljava/lang/Runnable;

    .line 812
    :cond_cc
    :goto_cc
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_2f

    .line 813
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->x()V

    .line 814
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 815
    new-instance v4, Landroid/support/v7/view/StandaloneActionMode;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    if-nez v0, :cond_156

    move v0, v1

    :goto_e7
    invoke-direct {v4, v5, v6, p1, v0}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    .line 817
    invoke-virtual {v4}, Landroid/support/v7/view/ActionMode;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 818
    invoke-virtual {v4}, Landroid/support/v7/view/ActionMode;->d()V

    .line 819
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 820
    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    .line 822
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->s()Z

    move-result v0

    if-eqz v0, :cond_158

    .line 823
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 824
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 825
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$6;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 853
    :cond_120
    :goto_120
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2f

    .line 854
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2f

    .line 754
    :cond_131
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    goto/16 :goto_80

    .line 802
    :cond_135
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    sget v4, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 803
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    .line 804
    if-eqz v0, :cond_cc

    .line 806
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->n()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 807
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_cc

    :cond_156
    move v0, v2

    .line 815
    goto :goto_e7

    .line 844
    :cond_158
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 845
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 848
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_120

    .line 849
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->v(Landroid/view/View;)V

    goto :goto_120

    .line 857
    :cond_17d
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_2f

    :cond_181
    move-object v0, v3

    goto/16 :goto_2b
.end method

.method public a(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->u()V

    .line 231
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    .line 1066
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_7

    .line 1072
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_6
.end method

.method a(ILandroid/view/Menu;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 634
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_f

    .line 635
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_e

    .line 637
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->f(Z)V

    .line 647
    :cond_e
    :goto_e
    return-void

    .line 639
    :cond_f
    if-nez p1, :cond_e

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 643
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-eqz v1, :cond_e

    .line 644
    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_e
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->h:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->u:Z

    if-eqz v0, :cond_11

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_11

    .line 243
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->a(Landroid/content/res/Configuration;)V

    .line 248
    :cond_11
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->i()Z

    .line 252
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 153
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 155
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->m()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1a

    .line 157
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->H:Z

    .line 163
    :cond_19
    :goto_19
    return-void

    .line 159
    :cond_1a
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->d(Z)V

    goto :goto_19
.end method

.method public a(Landroid/support/v7/widget/Toolbar;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_8

    .line 225
    :goto_7
    return-void

    .line 197
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 198
    instance-of v1, v0, Landroid/support/v7/app/WindowDecorActionBar;

    if-eqz v1, :cond_19

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_19
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->g:Landroid/view/MenuInflater;

    .line 209
    if-eqz v0, :cond_20

    .line 210
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->i()V

    .line 213
    :cond_20
    if-eqz p1, :cond_40

    .line 214
    new-instance v1, Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->d:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 216
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->f:Landroid/support/v7/app/ActionBar;

    .line 217
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/support/v7/app/ToolbarActionBar;->j()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 224
    :goto_3c
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->f()V

    goto :goto_7

    .line 219
    :cond_40
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->f:Landroid/support/v7/app/ActionBar;

    .line 221
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_3c
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->u()V

    .line 273
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 277
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->u()V

    .line 291
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 292
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 293
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 295
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 520
    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 899
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 900
    if-eqz v2, :cond_f

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/ActionBar;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 930
    :cond_e
    :goto_e
    return v0

    .line 906
    :cond_f
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v2, :cond_28

    .line 907
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 909
    if-eqz v2, :cond_28

    .line 910
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v1, :cond_e

    .line 911
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    goto :goto_e

    .line 921
    :cond_28
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-nez v2, :cond_3f

    .line 922
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v2

    .line 923
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 924
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 925
    iput-boolean v1, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    .line 926
    if-nez v3, :cond_e

    :cond_3f
    move v0, v1

    .line 930
    goto :goto_e
.end method

.method a(Landroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 935
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_12

    .line 937
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 946
    :goto_11
    return v0

    .line 942
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 943
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 944
    if-nez v2, :cond_23

    .line 946
    :goto_1c
    if-eqz v0, :cond_25

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11

    .line 944
    :cond_23
    const/4 v0, 0x0

    goto :goto_1c

    .line 946
    :cond_25
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public b(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 5

    .prologue
    .line 680
    if-nez p1, :cond_b

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_14

    .line 685
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->c()V

    .line 688
    :cond_14
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 690
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 691
    if-eqz v1, :cond_34

    .line 692
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    .line 693
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_34

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v1, :cond_34

    .line 694
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->e:Landroid/support/v7/app/AppCompatCallback;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    invoke-interface {v1, v2}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 698
    :cond_34
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    if-nez v1, :cond_3e

    .line 700
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    .line 703
    :cond_3e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_11

    .line 1078
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    .line 1079
    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1080
    if-eqz v0, :cond_11

    .line 1084
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->u()V

    .line 282
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 285
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 286
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->u()V

    .line 169
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->u()V

    .line 300
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 303
    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_a

    .line 624
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->r:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 630
    :cond_9
    :goto_9
    return-void

    .line 625
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->m()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 626
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->m()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->b(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 627
    :cond_18
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 628
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 950
    sparse-switch p1, :sswitch_data_26

    :cond_5
    move v0, v1

    .line 973
    :cond_6
    :goto_6
    return v0

    .line 952
    :sswitch_7
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(ILandroid/view/KeyEvent;)Z

    goto :goto_6

    .line 955
    :sswitch_b
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Z

    .line 956
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Z

    .line 958
    invoke-virtual {p0, v1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 959
    if-eqz v3, :cond_1f

    iget-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-eqz v4, :cond_1f

    .line 960
    if-nez v2, :cond_6

    .line 964
    invoke-direct {p0, v3, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_6

    .line 968
    :cond_1f
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->t()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_6

    .line 950
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

    .line 651
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_f

    .line 652
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 653
    if-eqz v1, :cond_e

    .line 654
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->f(Z)V

    .line 658
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

    .line 1004
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2f

    move v6, v7

    .line 1006
    :goto_9
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->K:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_14

    .line 1007
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->K:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1011
    :cond_14
    if-eqz v6, :cond_31

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/view/ViewParent;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v5, v7

    .line 1013
    :goto_20
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->K:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1016
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1013
    invoke-virtual/range {v0 .. v8}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_2f
    move v6, v1

    .line 1004
    goto :goto_9

    :cond_31
    move v5, v1

    .line 1011
    goto :goto_20
.end method

.method public c(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 561
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->h(I)I

    move-result v2

    .line 563
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->l:Z

    if-eqz v3, :cond_f

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_f

    .line 598
    :goto_e
    return v0

    .line 566
    :cond_f
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->h:Z

    if-eqz v3, :cond_17

    if-ne v2, v1, :cond_17

    .line 568
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->h:Z

    .line 571
    :cond_17
    sparse-switch v2, :sswitch_data_4c

    .line 598
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->b:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_e

    .line 573
    :sswitch_21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->y()V

    .line 574
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->h:Z

    move v0, v1

    .line 575
    goto :goto_e

    .line 577
    :sswitch_28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->y()V

    .line 578
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->i:Z

    move v0, v1

    .line 579
    goto :goto_e

    .line 581
    :sswitch_2f
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->y()V

    .line 582
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->j:Z

    move v0, v1

    .line 583
    goto :goto_e

    .line 585
    :sswitch_36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->y()V

    .line 586
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->y:Z

    move v0, v1

    .line 587
    goto :goto_e

    .line 589
    :sswitch_3d
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->y()V

    .line 590
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Z

    move v0, v1

    .line 591
    goto :goto_e

    .line 593
    :sswitch_44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->y()V

    .line 594
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->l:Z

    move v0, v1

    .line 595
    goto :goto_e

    .line 571
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

    .line 977
    sparse-switch p1, :sswitch_data_22

    .line 993
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_e

    .line 996
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(ILandroid/view/KeyEvent;)Z

    :cond_e
    move v0, v1

    .line 998
    :goto_f
    return v0

    .line 979
    :sswitch_10
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->d(ILandroid/view/KeyEvent;)Z

    goto :goto_f

    .line 987
    :sswitch_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1f

    :goto_1c
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Z

    goto :goto_5

    :cond_1f
    move v0, v1

    goto :goto_1c

    .line 977
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
    .line 256
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_a

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->e(Z)V

    .line 260
    :cond_a
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_a

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->e(Z)V

    .line 268
    :cond_a
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 712
    :goto_c
    return-void

    .line 711
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)V

    goto :goto_c
.end method

.method public g()V
    .registers 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->g()V

    .line 309
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_c

    .line 310
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->i()V

    .line 312
    :cond_c
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1049
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 1057
    :cond_f
    :goto_f
    return-void

    .line 1051
    :cond_10
    invoke-static {v0}, Landroid/support/v4/view/LayoutInflaterCompat;->a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-nez v0, :cond_f

    .line 1053
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public l()V
    .registers 4

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->u()V

    .line 175
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->h:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_c

    .line 188
    :cond_b
    :goto_b
    return-void

    .line 179
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    .line 180
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->i:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->f:Landroid/support/v7/app/ActionBar;

    .line 185
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_b

    .line 186
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->f:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->H:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->d(Z)V

    goto :goto_b

    .line 182
    :cond_2b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_1f

    .line 183
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->f:Landroid/support/v7/app/ActionBar;

    goto :goto_1f
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    .line 663
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->q()Landroid/view/Window$Callback;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 665
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 666
    if-eqz v1, :cond_1d

    .line 667
    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 670
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .prologue
    .line 675
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 676
    return-void
.end method

.method final s()Z
    .registers 2

    .prologue
    .line 870
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->u:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method t()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 881
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_b

    .line 882
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->m:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->c()V

    .line 893
    :cond_a
    :goto_a
    return v0

    .line 887
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 888
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->g()Z

    move-result v1

    if-nez v1, :cond_a

    .line 893
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method
