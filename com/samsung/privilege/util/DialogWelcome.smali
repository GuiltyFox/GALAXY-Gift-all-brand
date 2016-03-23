.class public Lcom/samsung/privilege/util/DialogWelcome;
.super Ljava/lang/Object;
.source "DialogWelcome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static arrImg:[Ljava/lang/Integer;

.field private static gActivityContext:Landroid/content/Context;

.field private static gDialogMyPoint:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/privilege/util/DialogWelcome;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogWelcome;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetPixelFromDips(Landroid/content/Context;F)I
    .registers 5
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "pixels"    # F

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 194
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method static synthetic access$000()[Ljava/lang/Integer;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->arrImg:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    return-object v0
.end method

.method public static showDialogWelcome(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 15
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;

    .prologue
    const/high16 v11, 0x41200000

    const/high16 v12, 0x40400000

    .line 32
    move-object v9, p0

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_113

    .line 33
    sput-object p0, Lcom/samsung/privilege/util/DialogWelcome;->gActivityContext:Landroid/content/Context;

    .line 35
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 38
    :try_start_12
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    if-eqz v9, :cond_1b

    .line 39
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_114

    .line 45
    :cond_1b
    :goto_1b
    new-instance v9, Landroid/app/Dialog;

    const v10, 0x7f0d00fb

    invoke-direct {v9, p0, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    .line 47
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    const v10, 0x7f04011c

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(I)V

    .line 49
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    const v10, 0x7f100205

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 51
    .local v2, "contentQT":Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    const v10, 0x7f100207

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 70
    .local v5, "linCircle":Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/samsung/privilege/util/DialogWelcome;->GetPixelFromDips(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v11}, Lcom/samsung/privilege/util/DialogWelcome;->GetPixelFromDips(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v8, "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p0, v12}, Lcom/samsung/privilege/util/DialogWelcome;->GetPixelFromDips(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v12}, Lcom/samsung/privilege/util/DialogWelcome;->GetPixelFromDips(Landroid/content/Context;F)I

    move-result v10

    invoke-static {p0, v12}, Lcom/samsung/privilege/util/DialogWelcome;->GetPixelFromDips(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v12}, Lcom/samsung/privilege/util/DialogWelcome;->GetPixelFromDips(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 105
    const/4 v6, 0x2

    .line 106
    .local v6, "numPage":I
    new-array v9, v6, [Ljava/lang/Integer;

    sput-object v9, Lcom/samsung/privilege/util/DialogWelcome;->arrImg:[Ljava/lang/Integer;

    .line 107
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6d
    const/4 v9, 0x2

    if-ge v3, v9, :cond_a0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "qt_img_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "ResID":I
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->arrImg:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 115
    .end local v0    # "ResID":I
    :cond_a0
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->arrImg:[Ljava/lang/Integer;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    new-array v4, v9, [Landroid/widget/ImageView;

    .line 116
    .local v4, "imgCircle":[Landroid/widget/ImageView;
    const/4 v3, 0x0

    :goto_a8
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->arrImg:[Ljava/lang/Integer;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    if-ge v3, v9, :cond_d6

    .line 117
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v4, v3

    .line 118
    aget-object v9, v4, v3

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    if-nez v3, :cond_cd

    .line 120
    aget-object v9, v4, v3

    const v10, 0x7f020334

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :goto_c5
    aget-object v9, v4, v3

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 122
    :cond_cd
    aget-object v9, v4, v3

    const v10, 0x7f020333

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c5

    .line 127
    :cond_d6
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    const v10, 0x7f100206

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    .line 128
    .local v7, "pager":Landroid/support/v4/view/ViewPager;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 129
    new-instance v9, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;

    sget-object v10, Lcom/samsung/privilege/util/DialogWelcome;->arrImg:[Ljava/lang/Integer;

    invoke-direct {v9, p0, v10}, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Integer;)V

    invoke-virtual {v7, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 131
    new-instance v9, Lcom/samsung/privilege/util/DialogWelcome$1;

    invoke-direct {v9, p1, p0, v4}, Lcom/samsung/privilege/util/DialogWelcome$1;-><init>(Landroid/os/Handler;Landroid/content/Context;[Landroid/widget/ImageView;)V

    invoke-virtual {v7, v9}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 182
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 183
    .local v1, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 184
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    sget-object v9, Lcom/samsung/privilege/util/DialogWelcome;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 188
    .end local v1    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "contentQT":Landroid/widget/LinearLayout;
    .end local v3    # "i":I
    .end local v4    # "imgCircle":[Landroid/widget/ImageView;
    .end local v5    # "linCircle":Landroid/widget/LinearLayout;
    .end local v6    # "numPage":I
    .end local v7    # "pager":Landroid/support/v4/view/ViewPager;
    .end local v8    # "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    :cond_113
    return-void

    .line 41
    :catch_114
    move-exception v9

    goto/16 :goto_1b
.end method
