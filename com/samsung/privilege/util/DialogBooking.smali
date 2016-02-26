.class public Lcom/samsung/privilege/util/DialogBooking;
.super Ljava/lang/Object;
.source "DialogBooking.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/privilege/util/DialogBooking;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogBooking;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialogBooking(Landroid/content/Context;)V
    .registers 11
    .param p0, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 21
    move-object v8, p0

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_94

    .line 22
    new-instance v1, Landroid/app/Dialog;

    const v8, 0x1030010

    invoke-direct {v1, p0, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    .local v1, "dialogBooking":Landroid/app/Dialog;
    const v8, 0x7f0300d8

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 26
    const v8, 0x7f0c01ca

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 27
    .local v6, "tvHeader":Landroid/widget/TextView;
    const v8, 0x7f0c0306

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 28
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v8, 0x7f0c0065

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 29
    .local v3, "imgCancel":Landroid/widget/ImageView;
    const v8, 0x7f0c0307

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 30
    .local v7, "tvOk":Landroid/widget/TextView;
    const v8, 0x7f0c0066

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 32
    .local v5, "tvCancel":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 33
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 38
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 39
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    new-instance v8, Lcom/samsung/privilege/util/DialogBooking$1;

    invoke-direct {v8, v1}, Lcom/samsung/privilege/util/DialogBooking$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance v8, Lcom/samsung/privilege/util/DialogBooking$2;

    invoke-direct {v8, v1}, Lcom/samsung/privilege/util/DialogBooking$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 55
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v8, 0x11

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 60
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogBooking":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgCancel":Landroid/widget/ImageView;
    .end local v4    # "imgOk":Landroid/widget/ImageView;
    .end local v5    # "tvCancel":Landroid/widget/TextView;
    .end local v6    # "tvHeader":Landroid/widget/TextView;
    .end local v7    # "tvOk":Landroid/widget/TextView;
    :cond_94
    return-void
.end method
