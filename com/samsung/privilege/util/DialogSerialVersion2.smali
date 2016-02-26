.class public Lcom/samsung/privilege/util/DialogSerialVersion2;
.super Ljava/lang/Object;
.source "DialogSerialVersion2.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static gIsFinish:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/privilege/util/DialogSerialVersion2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogSerialVersion2;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bindingEventSwitchSerial(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 28
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "dialogSerial"    # Landroid/app/Dialog;

    .prologue
    .line 418
    const v1, 0x7f04002e

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 419
    .local v5, "animation1":Landroid/view/animation/Animation;
    const v1, 0x7f040008

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 421
    .local v9, "animation2":Landroid/view/animation/Animation;
    const v1, 0x7f0c00d7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 422
    .local v2, "btnSwithToBarcode":Landroid/widget/LinearLayout;
    const v1, 0x7f0c00da

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 423
    .local v3, "btnSwithToSerial":Landroid/widget/LinearLayout;
    const v1, 0x7f0c00dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 425
    .local v4, "btnSwithToQRCode":Landroid/widget/LinearLayout;
    const v1, 0x7f0c00d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 426
    .local v19, "imgBarcode":Landroid/widget/ImageView;
    const v1, 0x7f0c00d9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 427
    .local v21, "tvCodeSmall":Landroid/widget/TextView;
    const v1, 0x7f0c00dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 428
    .local v25, "tvSerialSmall":Landroid/widget/TextView;
    const v1, 0x7f0c00d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 430
    .local v8, "contentBarcode":Landroid/widget/LinearLayout;
    const v1, 0x7f0c0329

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 431
    .local v6, "tvSerialNumber":Landroid/widget/TextView;
    const v1, 0x7f0c032a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 432
    .local v23, "tvSerialBarcode":Landroid/widget/TextView;
    const v1, 0x7f0c032b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 434
    .local v24, "tvSerialQRcode":Landroid/widget/TextView;
    const v1, 0x7f0c00d5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 435
    .local v20, "imgQRcode":Landroid/widget/ImageView;
    const v1, 0x7f0c00df

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 436
    .local v22, "tvQRSmall":Landroid/widget/TextView;
    const v1, 0x7f0c00d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 438
    .local v7, "contentQRCode":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/samsung/privilege/util/DialogSerialVersion2$3;

    invoke-direct/range {v1 .. v9}, Lcom/samsung/privilege/util/DialogSerialVersion2$3;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    new-instance v10, Lcom/samsung/privilege/util/DialogSerialVersion2$4;

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v8

    move-object/from16 v16, v7

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/samsung/privilege/util/DialogSerialVersion2$4;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    new-instance v10, Lcom/samsung/privilege/util/DialogSerialVersion2$5;

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v8

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/samsung/privilege/util/DialogSerialVersion2$5;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    return-void
.end method

.method private static setWebViewMessage(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 10
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "webViewMessage"    # Landroid/webkit/WebView;
    .param p2, "html"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\');}body {font-family: \'verdana\';font-size:18pt;font-style:normal;}</style></head>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "head":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<html>"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<body>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</body></html>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "htmlData":Ljava/lang/String;
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public static showDialogSerial(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    .registers 65
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "purchasing"    # Lcom/samsung/privilege/bean/Purchasing;
    .param p2, "currentDate"    # J
    .param p4, "pIntID"    # I
    .param p5, "pStrAgencyName"    # Ljava/lang/String;
    .param p6, "pStrName"    # Ljava/lang/String;
    .param p7, "plngExpireIn"    # Ljava/lang/Long;
    .param p8, "pStrSerial"    # Ljava/lang/String;
    .param p9, "pStrBarcode"    # Ljava/lang/String;
    .param p10, "pStrPrivilegeMessage"    # Ljava/lang/String;
    .param p11, "pImageFetcher"    # Lcom/bitmapfun/util/ImageFetcher;
    .param p12, "type"    # Ljava/lang/String;
    .param p13, "objHandler"    # Landroid/os/Handler;
    .param p14, "paramNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 409
    :goto_6
    return-void

    .line 54
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 56
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogUtil;->genPrivilegeMessageOfFrontend(Ljava/lang/String;Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;)Ljava/lang/String;

    move-result-object v29

    .line 61
    .local v29, "privilege_message_regen":Ljava/lang/String;
    new-instance v23, Landroid/app/Dialog;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 62
    .local v23, "dialogSerial":Landroid/app/Dialog;
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 63
    const v4, 0x7f0300e8

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 71
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v8, 0x3

    if-eq v4, v8, :cond_4f

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v8, 0x4

    if-ne v4, v8, :cond_417

    .line 75
    :cond_4f
    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v44

    .line 76
    .local v44, "window":Landroid/view/Window;
    invoke-virtual/range {v44 .. v44}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v8, v4

    const-wide v46, 0x3feccccccccccccdL

    mul-double v8, v8, v46

    double-to-int v4, v8

    invoke-virtual/range {v44 .. v44}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide v46, 0x3fe6666666666666L

    mul-double v8, v8, v46

    double-to-int v8, v8

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v8}, Landroid/view/Window;->setLayout(II)V

    .line 77
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :goto_8d
    const v4, 0x7f0c00a5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 95
    .local v6, "imgCampaign":Landroid/widget/ImageView;
    const v4, 0x7f0c00a6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 96
    .local v36, "tvCampaignDesc":Landroid/widget/TextView;
    const v4, 0x7f0c0329

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 97
    .local v10, "tvSerialNumber":Landroid/widget/TextView;
    const v4, 0x7f0c032a

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 98
    .local v39, "tvSerialBarcode":Landroid/widget/TextView;
    const v4, 0x7f0c032b

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 102
    .local v40, "tvSerialQRcode":Landroid/widget/TextView;
    const v4, 0x7f0c00d2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 103
    .local v26, "imgBarcode":Landroid/widget/ImageView;
    const v4, 0x7f0c00d9

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 104
    .local v37, "tvCodeSmall":Landroid/widget/TextView;
    const v4, 0x7f0c00dc

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 105
    .local v41, "tvSerialSmall":Landroid/widget/TextView;
    const v4, 0x7f0c00d1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 107
    .local v11, "contentBarcode":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00d5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 108
    .local v27, "imgQRcode":Landroid/widget/ImageView;
    const v4, 0x7f0c00df

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 109
    .local v38, "tvQRSmall":Landroid/widget/TextView;
    const v4, 0x7f0c00d4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 112
    .local v12, "contentQRCode":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00d7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 113
    .local v13, "btnSwithToBarcode":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00da

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 114
    .local v14, "btnSwithToSerial":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00dd

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 115
    .local v15, "btnSwithToQRCode":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00e1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 116
    .local v17, "tvTitleTime":Landroid/widget/TextView;
    const v4, 0x7f0c00e3

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 118
    .local v18, "tvTimeLeft":Landroid/widget/TextView;
    const v4, 0x7f0c00af

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    .line 119
    .local v22, "btnClose":Landroid/widget/Button;
    const v4, 0x7f0c00a7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 120
    .local v42, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v31, Ljava/text/SimpleDateFormat;

    const-string v4, "dd MMM yyyy HH:mm"

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .local v31, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v35

    .line 122
    .local v35, "strRedeemDate":Ljava/lang/String;
    if-eqz p1, :cond_198

    .line 123
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    move-wide/from16 v46, v0

    const-wide/16 v48, 0x6270

    sub-long v46, v46, v48

    const-wide/16 v48, 0x3e8

    mul-long v46, v46, v48

    move-wide/from16 v0, v46

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v35

    .line 125
    :cond_198
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v8, 0x7f090260

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const v4, 0x7f0c00e2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 130
    .local v16, "imgProgress":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->loadImageAnimate(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 133
    :try_start_1d9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v25

    .line 134
    .local v25, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 150
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 153
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 154
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextSize(F)V
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_275} :catch_629

    .line 159
    .end local v25    # "font":Landroid/graphics/Typeface;
    :goto_275
    const v4, 0x7f0c032d

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/webkit/WebView;

    .line 181
    .local v43, "webViewMessage":Landroid/webkit/WebView;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "api/campaign/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/picture/modifydate="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "img_url":Ljava/lang/String;
    const/4 v7, 0x0

    const v8, 0x7f0203a7

    const/4 v9, 0x0

    move-object/from16 v4, p11

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    if-eqz v29, :cond_4f5

    const-string v4, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f5

    .line 187
    const-string v4, "&lt;"

    const-string v8, "<"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "&gt;"

    const-string v9, ">"

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 188
    const-string v4, "<serial>"

    move-object/from16 v0, v29

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogSerialVersion2;->setWebViewMessage(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 195
    :goto_2f8
    const/16 v34, 0x0

    .line 196
    .local v34, "show_layout_serial":Z
    const/16 v33, 0x0

    .line 197
    .local v33, "show_layout_message":Z
    const/16 v32, 0x0

    .line 199
    .local v32, "show_layout_countdown":Z
    if-eqz p9, :cond_524

    const-string v4, ""

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_524

    .line 200
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v8, "None"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_520

    .line 201
    if-eqz v29, :cond_51c

    const-string v4, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51c

    .line 202
    const/16 v34, 0x0

    .line 213
    :goto_328
    if-eqz v34, :cond_594

    .line 214
    const v4, 0x7f0c00cf

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 216
    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    move-object/from16 v0, v39

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    move-object/from16 v0, v40

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :try_start_34a
    const-string v4, "CODE_128"

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-static {v4, v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v28

    .line 222
    .local v28, "intent":Landroid/content/Intent;
    new-instance v30, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;

    const/16 v4, 0x1f4

    const/4 v8, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_34a .. :try_end_362} :catch_543

    .line 224
    .local v30, "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :try_start_362
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    .line 225
    .local v21, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_36d
    .catch Lcom/google/zxing/WriterException; {:try_start_362 .. :try_end_36d} :catch_528
    .catch Ljava/lang/Exception; {:try_start_362 .. :try_end_36d} :catch_543

    .line 234
    .end local v21    # "bitmap":Landroid/graphics/Bitmap;
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v30    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :goto_36d
    :try_start_36d
    const-string v4, "QR_CODE"

    move-object/from16 v0, p8

    move-object/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v28

    .line 235
    .restart local v28    # "intent":Landroid/content/Intent;
    new-instance v30, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;

    const/16 v4, 0x1f4

    const/4 v8, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_385
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_385} :catch_579

    .line 237
    .restart local v30    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :try_start_385
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    .line 238
    .restart local v21    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_390
    .catch Lcom/google/zxing/WriterException; {:try_start_385 .. :try_end_390} :catch_55e
    .catch Ljava/lang/Exception; {:try_start_385 .. :try_end_390} :catch_579

    .line 246
    .end local v21    # "bitmap":Landroid/graphics/Bitmap;
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v30    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :goto_390
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogSerialVersion2;->bindingEventSwitchSerial(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 251
    :goto_397
    if-nez p7, :cond_5a4

    .line 252
    const v4, 0x7f0c032e

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :goto_3a7
    if-eqz p9, :cond_3c9

    const-string v4, ""

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c9

    .line 348
    const-string v4, "CODE_128"

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_611

    .line 349
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    const/4 v4, 0x4

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    :cond_3c9
    :goto_3c9
    new-instance v4, Lcom/samsung/privilege/util/DialogSerialVersion2$2;

    move-object/from16 v0, p14

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    move-object/from16 v3, v23

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogSerialVersion2$2;-><init>(Lcom/samsung/privilege/bean/NFCTag;Landroid/app/Activity;Landroid/os/Handler;Landroid/app/Dialog;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    .line 397
    .local v20, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    move-object/from16 v0, v20

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 398
    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 401
    const/16 v19, 0x64

    .line 402
    .local v19, "TARGET_BRIGHTNESS":I
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/ScreenUtil;->getBrightnessMode(Landroid/app/Activity;)I

    move-result v4

    if-nez v4, :cond_409

    .line 403
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/ScreenUtil;->getBrightnessLevel(Landroid/app/Activity;)I

    move-result v4

    sput v4, Lic/buzzebeeslib/util/ScreenUtil;->DEFAULT_MANUAL:I

    .line 404
    const/16 v4, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lic/buzzebeeslib/util/ScreenUtil;->setBrightness(Landroid/app/Activity;II)V

    .line 406
    :cond_409
    const/16 v4, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lic/buzzebeeslib/util/ScreenUtil;->setBrightness(Landroid/app/Activity;II)V

    .line 408
    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->show()V

    goto/16 :goto_6

    .line 78
    .end local v5    # "img_url":Ljava/lang/String;
    .end local v6    # "imgCampaign":Landroid/widget/ImageView;
    .end local v10    # "tvSerialNumber":Landroid/widget/TextView;
    .end local v11    # "contentBarcode":Landroid/widget/LinearLayout;
    .end local v12    # "contentQRCode":Landroid/widget/LinearLayout;
    .end local v13    # "btnSwithToBarcode":Landroid/widget/LinearLayout;
    .end local v14    # "btnSwithToSerial":Landroid/widget/LinearLayout;
    .end local v15    # "btnSwithToQRCode":Landroid/widget/LinearLayout;
    .end local v16    # "imgProgress":Landroid/widget/ImageView;
    .end local v17    # "tvTitleTime":Landroid/widget/TextView;
    .end local v18    # "tvTimeLeft":Landroid/widget/TextView;
    .end local v19    # "TARGET_BRIGHTNESS":I
    .end local v20    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "btnClose":Landroid/widget/Button;
    .end local v26    # "imgBarcode":Landroid/widget/ImageView;
    .end local v27    # "imgQRcode":Landroid/widget/ImageView;
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v32    # "show_layout_countdown":Z
    .end local v33    # "show_layout_message":Z
    .end local v34    # "show_layout_serial":Z
    .end local v35    # "strRedeemDate":Ljava/lang/String;
    .end local v36    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v37    # "tvCodeSmall":Landroid/widget/TextView;
    .end local v38    # "tvQRSmall":Landroid/widget/TextView;
    .end local v39    # "tvSerialBarcode":Landroid/widget/TextView;
    .end local v40    # "tvSerialQRcode":Landroid/widget/TextView;
    .end local v41    # "tvSerialSmall":Landroid/widget/TextView;
    .end local v42    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v43    # "webViewMessage":Landroid/webkit/WebView;
    .end local v44    # "window":Landroid/view/Window;
    :cond_417
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v8, 0x2

    if-ne v4, v8, :cond_466

    .line 79
    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v44

    .line 80
    .restart local v44    # "window":Landroid/view/Window;
    invoke-virtual/range {v44 .. v44}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v8, v4

    const-wide v46, 0x3feccccccccccccdL

    mul-double v8, v8, v46

    double-to-int v4, v8

    invoke-virtual/range {v44 .. v44}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide v46, 0x3fe6666666666666L

    mul-double v8, v8, v46

    double-to-int v8, v8

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v8}, Landroid/view/Window;->setLayout(II)V

    .line 81
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8d

    .line 82
    .end local v44    # "window":Landroid/view/Window;
    :cond_466
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4b5

    .line 83
    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v44

    .line 84
    .restart local v44    # "window":Landroid/view/Window;
    invoke-virtual/range {v44 .. v44}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v8, v4

    const-wide v46, 0x3feccccccccccccdL

    mul-double v8, v8, v46

    double-to-int v4, v8

    invoke-virtual/range {v44 .. v44}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide v46, 0x3feccccccccccccdL

    mul-double v8, v8, v46

    double-to-int v8, v8

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v8}, Landroid/view/Window;->setLayout(II)V

    .line 85
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8d

    .line 87
    .end local v44    # "window":Landroid/view/Window;
    :cond_4b5
    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v44

    .line 88
    .restart local v44    # "window":Landroid/view/Window;
    invoke-virtual/range {v44 .. v44}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v8, v4

    const-wide v46, 0x3feccccccccccccdL

    mul-double v8, v8, v46

    double-to-int v4, v8

    invoke-virtual/range {v44 .. v44}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide v46, 0x3fe6666666666666L

    mul-double v8, v8, v46

    double-to-int v8, v8

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v8}, Landroid/view/Window;->setLayout(II)V

    .line 89
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8d

    .line 192
    .restart local v5    # "img_url":Ljava/lang/String;
    .restart local v6    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v10    # "tvSerialNumber":Landroid/widget/TextView;
    .restart local v11    # "contentBarcode":Landroid/widget/LinearLayout;
    .restart local v12    # "contentQRCode":Landroid/widget/LinearLayout;
    .restart local v13    # "btnSwithToBarcode":Landroid/widget/LinearLayout;
    .restart local v14    # "btnSwithToSerial":Landroid/widget/LinearLayout;
    .restart local v15    # "btnSwithToQRCode":Landroid/widget/LinearLayout;
    .restart local v16    # "imgProgress":Landroid/widget/ImageView;
    .restart local v17    # "tvTitleTime":Landroid/widget/TextView;
    .restart local v18    # "tvTimeLeft":Landroid/widget/TextView;
    .restart local v22    # "btnClose":Landroid/widget/Button;
    .restart local v26    # "imgBarcode":Landroid/widget/ImageView;
    .restart local v27    # "imgQRcode":Landroid/widget/ImageView;
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v35    # "strRedeemDate":Ljava/lang/String;
    .restart local v36    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v37    # "tvCodeSmall":Landroid/widget/TextView;
    .restart local v38    # "tvQRSmall":Landroid/widget/TextView;
    .restart local v39    # "tvSerialBarcode":Landroid/widget/TextView;
    .restart local v40    # "tvSerialQRcode":Landroid/widget/TextView;
    .restart local v41    # "tvSerialSmall":Landroid/widget/TextView;
    .restart local v42    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .restart local v43    # "webViewMessage":Landroid/webkit/WebView;
    :cond_4f5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "<div align=\'center\'>"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v8, 0x7f09017f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "</div>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1, v4}, Lcom/samsung/privilege/util/DialogSerialVersion2;->setWebViewMessage(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_2f8

    .line 204
    .restart local v32    # "show_layout_countdown":Z
    .restart local v33    # "show_layout_message":Z
    .restart local v34    # "show_layout_serial":Z
    :cond_51c
    const/16 v34, 0x1

    .line 206
    goto/16 :goto_328

    .line 207
    :cond_520
    const/16 v34, 0x1

    .line 209
    goto/16 :goto_328

    .line 210
    :cond_524
    const/16 v34, 0x1

    goto/16 :goto_328

    .line 226
    .restart local v28    # "intent":Landroid/content/Intent;
    .restart local v30    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_528
    move-exception v24

    .line 227
    .local v24, "e":Lcom/google/zxing/WriterException;
    :try_start_529
    const-string v4, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(WriterException):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_541
    .catch Ljava/lang/Exception; {:try_start_529 .. :try_end_541} :catch_543

    goto/16 :goto_36d

    .line 229
    .end local v24    # "e":Lcom/google/zxing/WriterException;
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v30    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_543
    move-exception v24

    .line 230
    .local v24, "e":Ljava/lang/Exception;
    const-string v4, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36d

    .line 239
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v28    # "intent":Landroid/content/Intent;
    .restart local v30    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_55e
    move-exception v24

    .line 240
    .local v24, "e":Lcom/google/zxing/WriterException;
    :try_start_55f
    const-string v4, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(WriterException):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_577
    .catch Ljava/lang/Exception; {:try_start_55f .. :try_end_577} :catch_579

    goto/16 :goto_390

    .line 242
    .end local v24    # "e":Lcom/google/zxing/WriterException;
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v30    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_579
    move-exception v24

    .line 243
    .local v24, "e":Ljava/lang/Exception;
    const-string v4, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_390

    .line 248
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_594
    const v4, 0x7f0c00cf

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_397

    .line 254
    :cond_5a4
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v46, 0x0

    cmp-long v4, v8, v46

    if-lez v4, :cond_5c1

    .line 255
    new-instance v7, Lcom/samsung/privilege/util/DialogSerialVersion2$1;

    move-object/from16 v8, p0

    move-object/from16 v9, p7

    invoke-direct/range {v7 .. v18}, Lcom/samsung/privilege/util/DialogSerialVersion2$1;-><init>(Landroid/app/Activity;Ljava/lang/Long;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 330
    .local v7, "runnable":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3a7

    .line 332
    .end local v7    # "runnable":Ljava/lang/Runnable;
    :cond_5c1
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v46, 0x0

    cmp-long v4, v8, v46

    if-gtz v4, :cond_601

    .line 333
    const v4, 0x7f09016b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const/16 v4, 0x8

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    const/16 v4, 0x8

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3a7

    .line 342
    :cond_601
    const v4, 0x7f0c032e

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3a7

    .line 352
    :cond_611
    const-string v4, "QR_CODE"

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c9

    .line 353
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    const/4 v4, 0x4

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3c9

    .line 155
    .end local v5    # "img_url":Ljava/lang/String;
    .end local v32    # "show_layout_countdown":Z
    .end local v33    # "show_layout_message":Z
    .end local v34    # "show_layout_serial":Z
    .end local v43    # "webViewMessage":Landroid/webkit/WebView;
    :catch_629
    move-exception v4

    goto/16 :goto_275
.end method
