.class public Lcom/samsung/privilege/util/DialogWelcome;
.super Ljava/lang/Object;
.source "DialogWelcome.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:[Ljava/lang/Integer;

.field private static d:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/privilege/util/DialogWelcome;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogWelcome;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 195
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 11

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    .line 33
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_145

    .line 34
    sput-object p0, Lcom/samsung/privilege/util/DialogWelcome;->b:Landroid/content/Context;

    .line 36
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 39
    :try_start_13
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_1c

    .line 40
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_146

    .line 46
    :cond_1c
    :goto_1c
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0d00fe

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    .line 48
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    const v1, 0x7f040130

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 50
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    const v1, 0x7f100257

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 71
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v3}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    invoke-static {p0, v6}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v6}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v6}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    const/4 v5, 0x4

    .line 107
    new-array v1, v5, [Ljava/lang/Integer;

    sput-object v1, Lcom/samsung/privilege/util/DialogWelcome;->c:[Ljava/lang/Integer;

    move v3, v2

    .line 108
    :goto_6e
    if-ge v3, v5, :cond_d3

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qt_img_en"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 110
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1054"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qt_img_th"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 113
    :cond_c7
    sget-object v6, Lcom/samsung/privilege/util/DialogWelcome;->c:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    .line 108
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6e

    .line 116
    :cond_d3
    sget-object v1, Lcom/samsung/privilege/util/DialogWelcome;->c:[Ljava/lang/Integer;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [Landroid/widget/ImageView;

    move v1, v2

    .line 117
    :goto_db
    sget-object v5, Lcom/samsung/privilege/util/DialogWelcome;->c:[Ljava/lang/Integer;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_109

    .line 118
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v3, v1

    .line 119
    aget-object v5, v3, v1

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    if-nez v1, :cond_100

    .line 121
    aget-object v5, v3, v1

    const v6, 0x7f020342

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :goto_f8
    aget-object v5, v3, v1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    .line 123
    :cond_100
    aget-object v5, v3, v1

    const v6, 0x7f020340

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f8

    .line 128
    :cond_109
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    const v1, 0x7f100256

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 129
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 130
    new-instance v1, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;

    sget-object v2, Lcom/samsung/privilege/util/DialogWelcome;->c:[Ljava/lang/Integer;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 132
    new-instance v1, Lcom/samsung/privilege/util/DialogWelcome$1;

    invoke-direct {v1, p1, p0, v3}, Lcom/samsung/privilege/util/DialogWelcome$1;-><init>(Landroid/os/Handler;Landroid/content/Context;[Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 183
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 184
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 185
    sget-object v1, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 187
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 189
    :cond_145
    return-void

    .line 42
    :catch_146
    move-exception v0

    goto/16 :goto_1c
.end method

.method static synthetic a()[Ljava/lang/Integer;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->c:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic b()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/privilege/util/DialogWelcome;->d:Landroid/app/Dialog;

    return-object v0
.end method
