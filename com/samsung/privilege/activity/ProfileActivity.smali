.class public Lcom/samsung/privilege/activity/ProfileActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProfileActivity.java"


# static fields
.field private static final DIALOG_ID_DATE:I = 0xa

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final RC_BrowseImage:I = 0x1

.field private static final RC_TakePhoto:I = 0x2

.field public static final REQUEST_CODE_CROP_IMAGE:I = 0x3

.field private static mediaFile:Ljava/io/File;

.field private static path:Ljava/lang/String;


# instance fields
.field private final MENU_BrowseImage:I

.field private final MENU_DeletePhoto:I

.field private final MENU_TakePhoto:I

.field private final MOBILE_DEFAULT:Ljava/lang/String;

.field private final REQUEST_CODE_ASK_PERMISSIONS_BEACON:I

.field private final REQUEST_CODE_ASK_PERMISSIONS_CAMERA:I

.field private final REQUEST_CODE_ASK_PERMISSIONS_READ_STORAGE:I

.field private SelectDateStart:Landroid/view/View$OnTouchListener;

.field private TAG:Ljava/lang/String;

.field private gCategoryConfig:Ljava/lang/String;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gIsSelectStartDateTime:Z

.field private gObjCameraData:Lcom/bzbs/bean/CameraData;

.field private imageUri:Landroid/net/Uri;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 91
    const-class v0, Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "+0000000000"

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->MOBILE_DEFAULT:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->MENU_BrowseImage:I

    .line 102
    iput v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->MENU_TakePhoto:I

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->MENU_DeletePhoto:I

    .line 108
    new-instance v0, Lcom/bzbs/bean/CameraData;

    invoke-direct {v0}, Lcom/bzbs/bean/CameraData;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    .line 150
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->REQUEST_CODE_ASK_PERMISSIONS_CAMERA:I

    .line 151
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->REQUEST_CODE_ASK_PERMISSIONS_READ_STORAGE:I

    .line 152
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->REQUEST_CODE_ASK_PERMISSIONS_BEACON:I

    .line 781
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gIsSelectStartDateTime:Z

    .line 782
    new-instance v0, Lcom/samsung/privilege/activity/ProfileActivity$15;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileActivity$15;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->SelectDateStart:Landroid/view/View$OnTouchListener;

    .line 790
    new-instance v0, Lcom/samsung/privilege/activity/ProfileActivity$16;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileActivity$16;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/ProfileActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gIsSelectStartDateTime:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/privilege/activity/ProfileActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gIsSelectStartDateTime:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->processJsonProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private checkPermissionBeacon()V
    .registers 8

    .prologue
    .line 619
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4a

    .line 620
    const v5, 0x7f10019b

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 621
    .local v2, "textBeaconOFF":Landroid/widget/TextView;
    const v5, 0x7f10019d

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 622
    .local v3, "textBeaconON":Landroid/widget/TextView;
    const v5, 0x7f10019c

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 624
    .local v4, "toggleBeacon":Lcom/samsung/privilege/control/toggle/ToggleButton;
    const-string/jumbo v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 625
    .local v0, "hasPermissionACCESS_COARSE_LOCATION":I
    const-string/jumbo v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 626
    .local v1, "hasPermissionACCESS_FINE_LOCATION":I
    if-nez v0, :cond_33

    if-eqz v1, :cond_4b

    .line 627
    :cond_33
    invoke-virtual {v4}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff()V

    .line 628
    const-string/jumbo v5, "#ebebeb"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    const-string/jumbo v5, "#2ba9e3"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 636
    .end local v0    # "hasPermissionACCESS_COARSE_LOCATION":I
    .end local v1    # "hasPermissionACCESS_FINE_LOCATION":I
    .end local v2    # "textBeaconOFF":Landroid/widget/TextView;
    .end local v3    # "textBeaconON":Landroid/widget/TextView;
    .end local v4    # "toggleBeacon":Lcom/samsung/privilege/control/toggle/ToggleButton;
    :cond_4a
    :goto_4a
    return-void

    .line 631
    .restart local v0    # "hasPermissionACCESS_COARSE_LOCATION":I
    .restart local v1    # "hasPermissionACCESS_FINE_LOCATION":I
    .restart local v2    # "textBeaconOFF":Landroid/widget/TextView;
    .restart local v3    # "textBeaconON":Landroid/widget/TextView;
    .restart local v4    # "toggleBeacon":Lcom/samsung/privilege/control/toggle/ToggleButton;
    :cond_4b
    invoke-virtual {v4}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn()V

    .line 632
    const-string/jumbo v5, "#2ba9e3"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 633
    const-string/jumbo v5, "#ebebeb"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4a
.end method

.method private getOutputMediaFile(I)Ljava/io/File;
    .registers 7
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 933
    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "TEMP"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 936
    .local v0, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 937
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 952
    :cond_1b
    :goto_1b
    return-object v2

    .line 943
    :cond_1c
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, "timeStamp":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1b

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "BB_IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/activity/ProfileActivity;->path:Ljava/lang/String;

    .line 947
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "BB_IMG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/privilege/activity/ProfileActivity;->mediaFile:Ljava/io/File;

    .line 952
    sget-object v2, Lcom/samsung/privilege/activity/ProfileActivity;->mediaFile:Ljava/io/File;

    goto :goto_1b
.end method

.method private getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 923
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 925
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 927
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getProfileData()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/profile/me?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1080
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProfileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string/jumbo v2, ""

    const v3, 0x7f09026f

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1082
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$19;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/ProfileActivity$19;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 1121
    return-void
.end method

.method private initialBeacon()V
    .registers 10

    .prologue
    const v8, 0x7f100199

    const v7, 0x7f100198

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 583
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_44

    .line 584
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 585
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 588
    const v3, 0x7f10019b

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 589
    .local v0, "textBeaconOFF":Landroid/widget/TextView;
    const v3, 0x7f10019d

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 590
    .local v1, "textBeaconON":Landroid/widget/TextView;
    const v3, 0x7f10019c

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 591
    .local v2, "toggleBeacon":Lcom/samsung/privilege/control/toggle/ToggleButton;
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$14;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/ProfileActivity$14;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setOnToggleChanged(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 611
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->checkPermissionBeacon()V

    .line 616
    .end local v0    # "textBeaconOFF":Landroid/widget/TextView;
    .end local v1    # "textBeaconON":Landroid/widget/TextView;
    .end local v2    # "toggleBeacon":Lcom/samsung/privilege/control/toggle/ToggleButton;
    :goto_43
    return-void

    .line 613
    :cond_44
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 614
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43
.end method

.method private initialLayout()V
    .registers 40

    .prologue
    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    .line 247
    .local v15, "fontDefault":Landroid/graphics/Typeface;
    const v5, 0x7f100189

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 248
    const v5, 0x7f10018a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 249
    const v5, 0x7f10018b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 250
    const v5, 0x7f10018c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    const v5, 0x7f10018d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    const v5, 0x7f10018e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 253
    const v5, 0x7f10018f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 256
    const v5, 0x7f1001ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 257
    .local v20, "imageProfile":Landroid/widget/ImageView;
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/privilege/activity/ProfileActivity$2;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .end local v20    # "imageProfile":Landroid/widget/ImageView;
    :cond_9a
    const v5, 0x7f1001b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 270
    .local v28, "textBirthday":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 271
    .local v13, "calendarBirthday":Ljava/util/Calendar;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "dd/MM/yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 272
    .local v16, "formatterBirthday":Ljava/text/SimpleDateFormat;
    new-instance v3, Landroid/app/DatePickerDialog;

    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-direct {v5, v0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$3;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    const/4 v6, 0x1

    .line 278
    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 279
    .local v3, "datePickerDialogBirthday":Landroid/app/DatePickerDialog;
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/privilege/activity/ProfileActivity$4;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/app/DatePickerDialog;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v5, 0x7f100184

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 297
    const v5, 0x7f100184

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string/jumbo v6, "#2ba9e3"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    const v5, 0x7f100185

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    const v6, 0x7f0902d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v21, v5

    const/4 v5, 0x1

    const v6, 0x7f0902d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v21, v5

    .line 303
    .local v21, "itemsGender":[Ljava/lang/String;
    new-instance v10, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f04015e

    move-object/from16 v0, v21

    invoke-direct {v10, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 305
    .local v10, "adapterGender":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x7f1001b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 306
    .local v29, "textGender":Landroid/widget/TextView;
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-direct {v5, v0, v10, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$5;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v5, 0x7f1001b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 330
    const v5, 0x7f1001b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string/jumbo v6, "#2ba9e3"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    const v5, 0x7f1001b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    const/4 v5, 0x6

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    const v6, 0x7f0902ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    const/4 v5, 0x1

    const v6, 0x7f0902ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    const/4 v5, 0x2

    const v6, 0x7f0902ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    const/4 v5, 0x3

    const v6, 0x7f0902ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    const/4 v5, 0x4

    const v6, 0x7f0902f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    const/4 v5, 0x5

    const v6, 0x7f0902f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    .line 336
    .local v23, "itemsRegion":[Ljava/lang/String;
    new-instance v12, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f04015e

    move-object/from16 v0, v23

    invoke-direct {v12, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 338
    .local v12, "adapterRegion":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x7f1001b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 339
    .local v36, "textRegion":Landroid/widget/TextView;
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v23

    invoke-direct {v5, v0, v12, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$6;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 365
    .local v14, "calendarPurchase":Ljava/util/Calendar;
    const v5, 0x7f1001bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 366
    .local v35, "textPurchase":Landroid/widget/TextView;
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "dd/MM/yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 367
    .local v17, "formatterPurchase":Ljava/text/SimpleDateFormat;
    new-instance v4, Landroid/app/DatePickerDialog;

    new-instance v6, Lcom/samsung/privilege/activity/ProfileActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v17

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$7;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    const/4 v5, 0x1

    .line 373
    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v5, 0x2

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v5, 0x5

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 374
    .local v4, "datePickerDialogPurchase":Landroid/app/DatePickerDialog;
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity$8;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/app/DatePickerDialog;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    const v5, 0x7f100187

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 384
    .local v30, "textIncomeLevel":Landroid/widget/TextView;
    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v5, 0x0

    const v6, 0x7f0902de

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/4 v5, 0x1

    const v6, 0x7f0902df

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/4 v5, 0x2

    const v6, 0x7f0902e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/4 v5, 0x3

    const v6, 0x7f0902e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/4 v5, 0x4

    const v6, 0x7f0902e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    .line 385
    .local v22, "itemsIncome":[Ljava/lang/String;
    new-instance v11, Landroid/widget/ArrayAdapter;

    const v5, 0x7f04015e

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 386
    .local v11, "adapterIncome":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-direct {v5, v0, v11, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$9;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v5, 0x7f100197

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 403
    .local v32, "textLanguageThai":Landroid/widget/TextView;
    const v5, 0x7f100195

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 404
    .local v31, "textLanguageEN":Landroid/widget/TextView;
    const v5, 0x7f100196

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 405
    .local v37, "toggleLanguage":Lcom/samsung/privilege/control/toggle/ToggleButton;
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-direct {v5, v0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$10;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setOnToggleChanged(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 420
    const v5, 0x7f10019f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 421
    .local v33, "textNotificationOFF":Landroid/widget/TextView;
    const v5, 0x7f1001a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 422
    .local v34, "textNotificationON":Landroid/widget/TextView;
    const v5, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 423
    .local v38, "toggleNotification":Lcom/samsung/privilege/control/toggle/ToggleButton;
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v33

    invoke-direct {v5, v0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$11;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setOnToggleChanged(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "402705486466922"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c3

    .line 438
    const v5, 0x7f0901b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    const v5, 0x7f10017d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_352
    :goto_352
    const v5, 0x7f1001a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 452
    .local v19, "imageNotificationArrow":Landroid/widget/ImageView;
    const v5, 0x7f1001a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 453
    .local v26, "layoutNotificationChildRoot":Landroid/widget/LinearLayout;
    const/16 v5, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    const v5, 0x7f1001a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 456
    .local v27, "layoutNotificationRoot":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-direct {v5, v0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$12;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    const v5, 0x7f100181

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 517
    .local v18, "imageAdditionalButtonArrow":Landroid/widget/ImageView;
    const v5, 0x7f100182

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 518
    .local v25, "layoutAdditionalChild":Landroid/widget/LinearLayout;
    const/16 v5, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    const v5, 0x7f10017f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 521
    .local v24, "layoutAdditionalButton":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/samsung/privilege/activity/ProfileActivity$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v5, v0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$13;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    return-void

    .line 440
    .end local v18    # "imageAdditionalButtonArrow":Landroid/widget/ImageView;
    .end local v19    # "imageNotificationArrow":Landroid/widget/ImageView;
    .end local v24    # "layoutAdditionalButton":Landroid/widget/LinearLayout;
    .end local v25    # "layoutAdditionalChild":Landroid/widget/LinearLayout;
    .end local v26    # "layoutNotificationChildRoot":Landroid/widget/LinearLayout;
    .end local v27    # "layoutNotificationRoot":Landroid/widget/LinearLayout;
    :cond_3c3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "768830479847872"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f2

    .line 441
    const v5, 0x7f0901ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    const v5, 0x7f10017d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_352

    .line 443
    :cond_3f2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1525635597652592"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_413

    .line 445
    const v5, 0x7f10017d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_352

    .line 446
    :cond_413
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "517155661760483"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_352

    .line 447
    const v5, 0x7f0901af

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    const v5, 0x7f10017d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_352
.end method

.method private initialNotificationCategory()V
    .registers 5

    .prologue
    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cache_category_gift_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "cacheName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "catch_data":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 960
    const/4 v2, 0x0

    :try_start_41
    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->processJsonCategory(Ljava/lang/String;Z)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    .line 967
    :cond_44
    :goto_44
    return-void

    .line 961
    :catch_45
    move-exception v2

    goto :goto_44
.end method

.method private isValidEmail(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "target"    # Ljava/lang/CharSequence;

    .prologue
    .line 1382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1383
    const/4 v0, 0x0

    .line 1385
    :goto_7
    return v0

    :cond_8
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_7
.end method

.method private processJsonCategory(Ljava/lang/String;Z)V
    .registers 19
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "is_from_cache"    # Z

    .prologue
    .line 971
    const v13, 0x7f1001a5

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 972
    .local v6, "layoutNotificationChildRoot":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 974
    new-instance v5, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 975
    .local v5, "jsonRoot":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_8e

    move-result v13

    if-ge v1, v13, :cond_8f

    .line 977
    :try_start_1c
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 978
    .local v4, "jsonItem":Lorg/json/JSONObject;
    const-string/jumbo v13, "id"

    invoke-static {v4, v13}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v13, "all"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_39

    const-string/jumbo v13, "hot"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 975
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "jsonItem":Lorg/json/JSONObject;
    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 982
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v4    # "jsonItem":Lorg/json/JSONObject;
    :cond_3c
    new-instance v7, Lcom/bzbs/bean/CampaignCategory;

    invoke-direct {v7, v4}, Lcom/bzbs/bean/CampaignCategory;-><init>(Lorg/json/JSONObject;)V

    .line 984
    .local v7, "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    const-string/jumbo v13, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 985
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f040042

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 987
    .local v12, "view":Landroid/view/View;
    const v13, 0x7f1001a6

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 988
    .local v8, "textCategoryCaption":Landroid/widget/TextView;
    iget-object v13, v7, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    const v13, 0x7f1001a7

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 991
    .local v9, "textCategoryOff":Landroid/widget/TextView;
    const v13, 0x7f1001a9

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 992
    .local v10, "textCategoryOn":Landroid/widget/TextView;
    const v13, 0x7f1001a8

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 993
    .local v11, "toggleCategory":Lcom/samsung/privilege/control/toggle/ToggleButton;
    new-instance v13, Lcom/samsung/privilege/activity/ProfileActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9, v10}, Lcom/samsung/privilege/activity/ProfileActivity$17;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v11, v13}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setOnToggleChanged(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 1006
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_8b} :catch_8c

    goto :goto_39

    .line 1008
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "jsonItem":Lorg/json/JSONObject;
    .end local v7    # "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    .end local v8    # "textCategoryCaption":Landroid/widget/TextView;
    .end local v9    # "textCategoryOff":Landroid/widget/TextView;
    .end local v10    # "textCategoryOn":Landroid/widget/TextView;
    .end local v11    # "toggleCategory":Lcom/samsung/privilege/control/toggle/ToggleButton;
    .end local v12    # "view":Landroid/view/View;
    :catch_8c
    move-exception v13

    goto :goto_39

    .line 1012
    .end local v1    # "i":I
    .end local v5    # "jsonRoot":Lorg/json/JSONArray;
    .end local v6    # "layoutNotificationChildRoot":Landroid/widget/LinearLayout;
    :catch_8e
    move-exception v13

    .line 1015
    :cond_8f
    return-void
.end method

.method private processJsonCategoryConfig(Ljava/lang/String;)V
    .registers 23
    .param p1, "json_text"    # Ljava/lang/String;

    .prologue
    .line 1019
    const v18, 0x7f1001a5

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1020
    .local v9, "layoutNotificationChildRoot":Landroid/widget/LinearLayout;
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1022
    new-instance v8, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v8, "jsonRoot":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_121

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_122

    .line 1025
    :try_start_20
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1026
    .local v7, "jsonItem":Lorg/json/JSONObject;
    const-string/jumbo v18, "id"

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 1027
    .local v5, "id":I
    const-string/jumbo v18, "name_th"

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1028
    .local v11, "name_th":Ljava/lang/String;
    const-string/jumbo v18, "name_en"

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1029
    .local v10, "name_en":Ljava/lang/String;
    const-string/jumbo v18, "active"

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1031
    .local v3, "active":Z
    const-string/jumbo v18, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1032
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v18, 0x7f040042

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1034
    .local v17, "view":Landroid/view/View;
    const v18, 0x7f1001a6

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1035
    .local v13, "textCategoryCaption":Landroid/widget/TextView;
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    const v18, 0x7f1001a7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1038
    .local v14, "textCategoryOff":Landroid/widget/TextView;
    const v18, 0x7f1001a9

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1039
    .local v15, "textCategoryOn":Landroid/widget/TextView;
    const v18, 0x7f1001a8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1040
    .local v16, "toggleCategory":Lcom/samsung/privilege/control/toggle/ToggleButton;
    new-instance v18, Lcom/samsung/privilege/activity/ProfileActivity$18;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/privilege/activity/ProfileActivity$18;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setOnToggleChanged(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 1052
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/bzbs/data/UserLogin;->GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 1055
    .local v12, "str_category_config":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "=false]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_103

    .line 1056
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff()V

    .line 1057
    const-string/jumbo v18, "#2ba9e3"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1058
    const-string/jumbo v18, "#ebebeb"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1065
    :goto_fa
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1023
    .end local v3    # "active":Z
    .end local v5    # "id":I
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "jsonItem":Lorg/json/JSONObject;
    .end local v10    # "name_en":Ljava/lang/String;
    .end local v11    # "name_th":Ljava/lang/String;
    .end local v12    # "str_category_config":Ljava/lang/String;
    .end local v13    # "textCategoryCaption":Landroid/widget/TextView;
    .end local v14    # "textCategoryOff":Landroid/widget/TextView;
    .end local v15    # "textCategoryOn":Landroid/widget/TextView;
    .end local v16    # "toggleCategory":Lcom/samsung/privilege/control/toggle/ToggleButton;
    .end local v17    # "view":Landroid/view/View;
    :goto_ff
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_18

    .line 1060
    .restart local v3    # "active":Z
    .restart local v5    # "id":I
    .restart local v6    # "inflater":Landroid/view/LayoutInflater;
    .restart local v7    # "jsonItem":Lorg/json/JSONObject;
    .restart local v10    # "name_en":Ljava/lang/String;
    .restart local v11    # "name_th":Ljava/lang/String;
    .restart local v12    # "str_category_config":Ljava/lang/String;
    .restart local v13    # "textCategoryCaption":Landroid/widget/TextView;
    .restart local v14    # "textCategoryOff":Landroid/widget/TextView;
    .restart local v15    # "textCategoryOn":Landroid/widget/TextView;
    .restart local v16    # "toggleCategory":Lcom/samsung/privilege/control/toggle/ToggleButton;
    .restart local v17    # "view":Landroid/view/View;
    :cond_103
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn()V

    .line 1061
    const-string/jumbo v18, "#ebebeb"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1062
    const-string/jumbo v18, "#2ba9e3"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_11e} :catch_11f

    goto :goto_fa

    .line 1066
    .end local v3    # "active":Z
    .end local v5    # "id":I
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "jsonItem":Lorg/json/JSONObject;
    .end local v10    # "name_en":Ljava/lang/String;
    .end local v11    # "name_th":Ljava/lang/String;
    .end local v12    # "str_category_config":Ljava/lang/String;
    .end local v13    # "textCategoryCaption":Landroid/widget/TextView;
    .end local v14    # "textCategoryOff":Landroid/widget/TextView;
    .end local v15    # "textCategoryOn":Landroid/widget/TextView;
    .end local v16    # "toggleCategory":Lcom/samsung/privilege/control/toggle/ToggleButton;
    .end local v17    # "view":Landroid/view/View;
    :catch_11f
    move-exception v18

    goto :goto_ff

    .line 1070
    .end local v4    # "i":I
    .end local v8    # "jsonRoot":Lorg/json/JSONArray;
    .end local v9    # "layoutNotificationChildRoot":Landroid/widget/LinearLayout;
    :catch_121
    move-exception v18

    .line 1073
    :cond_122
    return-void
.end method

.method private processJsonProfile(Ljava/lang/String;)V
    .registers 48
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1125
    :try_start_0
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_6ba

    .line 1128
    .local v28, "jsonRoot":Lorg/json/JSONObject;
    :try_start_9
    const-string/jumbo v30, ""

    .line 1129
    .local v30, "profile_source":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "1"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_650

    .line 1130
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    .line 1131
    .local v20, "date":Ljava/util/Date;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getDay()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "-"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getMonth()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "-"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getYear()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1132
    .local v31, "strDate":Ljava/lang/String;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "https://graph.facebook.com/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "/picture/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1138
    .end local v20    # "date":Ljava/util/Date;
    .end local v31    # "strDate":Ljava/lang/String;
    :cond_7c
    :goto_7c
    const v41, 0x7f1001ab

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 1139
    .local v26, "imageProfile":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v41

    sget-object v42, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual/range {v41 .. v42}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_aa} :catch_9f4

    .line 1146
    .end local v26    # "imageProfile":Landroid/widget/ImageView;
    .end local v30    # "profile_source":Ljava/lang/String;
    :goto_aa
    :try_start_aa
    sget-object v29, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1147
    .local v29, "platform":Ljava/lang/String;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Device: <font color=\'#2ba9e3\'>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "</font>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1148
    .local v25, "htmlDevice":Ljava/lang/String;
    const v41, 0x7f1001ae

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_df} :catch_6a4

    .line 1153
    .end local v25    # "htmlDevice":Ljava/lang/String;
    .end local v29    # "platform":Ljava/lang/String;
    :goto_df
    :try_start_df
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "2"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6de

    .line 1154
    const v41, 0x7f10012f

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    const v41, 0x7f1001ac

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    const v41, 0x7f1001ad

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    :goto_120
    const v41, 0x7f10012f

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const-string/jumbo v42, "Name"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    const v41, 0x7f1001ac

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    const-string/jumbo v42, "FirstName"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    const v41, 0x7f1001ad

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    const-string/jumbo v42, "LastName"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    const v41, 0x7f1001af

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    const-string/jumbo v42, "ShippingFirstName"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    const v41, 0x7f1001b0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    const-string/jumbo v42, "ShippingLastName"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    const-string/jumbo v41, "ShippingFirstName"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1170
    .local v9, "FirstName":Ljava/lang/String;
    const-string/jumbo v41, "ShippingLastName"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1171
    .local v13, "LastName":Ljava/lang/String;
    const-string/jumbo v41, "Email"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1172
    .local v8, "Email":Ljava/lang/String;
    const-string/jumbo v41, "Gender"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1173
    .local v10, "Gender":Ljava/lang/String;
    const-string/jumbo v41, "Address"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1174
    .local v4, "Address":Ljava/lang/String;
    const-string/jumbo v41, "Zipcode"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1175
    .local v15, "Zipcode":Ljava/lang/String;
    const-string/jumbo v41, "BirthDate"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    .line 1176
    .local v6, "BirthDate":J
    const-string/jumbo v41, "Contact_Number"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1177
    .local v5, "Contact_Number":Ljava/lang/String;
    const-string/jumbo v41, "PhonePurchase"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v16

    .line 1178
    .local v16, "PhonePurchase":J
    const-string/jumbo v41, "Income"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1179
    .local v11, "Income":Ljava/lang/String;
    const-string/jumbo v41, "Interests"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1181
    .local v12, "Interests":Ljava/lang/String;
    if-eqz v9, :cond_710

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_710

    if-eqz v13, :cond_710

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_710

    if-eqz v10, :cond_710

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_710

    if-eqz v5, :cond_710

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_710

    const-wide/16 v42, 0x0

    cmp-long v41, v6, v42

    if-lez v41, :cond_710

    const-wide/16 v42, 0x0

    cmp-long v41, v16, v42

    if-lez v41, :cond_710

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Lcom/bzbs/data/UserLogin;->SetIsCompleteProfileRequire(Landroid/content/Context;Z)Z

    .line 1187
    :goto_269
    if-eqz v8, :cond_71b

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_71b

    if-eqz v11, :cond_71b

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_71b

    if-eqz v12, :cond_71b

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_71b

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Lcom/bzbs/data/UserLogin;->SetIsCompleteProfileOptional(Landroid/content/Context;Z)Z

    .line 1193
    :goto_299
    if-eqz v9, :cond_726

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_726

    if-eqz v13, :cond_726

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_726

    if-eqz v4, :cond_726

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_726

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Lcom/bzbs/data/UserLogin;->SetIsCompleteProfileShopping(Landroid/content/Context;Z)Z

    .line 1199
    :goto_2c9
    const-string/jumbo v41, "Gender"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1200
    .local v32, "strGender":Ljava/lang/String;
    const-string/jumbo v41, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_770

    .line 1206
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "female"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_731

    .line 1207
    const v41, 0x7f1001b2

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902d0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    :goto_309
    const-string/jumbo v41, "Region"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1218
    .local v33, "strRegion":Ljava/lang/String;
    const-string/jumbo v41, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_86c

    .line 1219
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "northern"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_785

    .line 1220
    const v41, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902ef

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    :goto_349
    const-string/jumbo v41, "BirthDate"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1239
    .local v18, "birth_date":Ljava/lang/String;
    const-string/jumbo v41, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_881

    .line 1240
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 1241
    .local v20, "date":Ljava/lang/Long;
    new-instance v22, Ljava/util/Date;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    move-object/from16 v0, v22

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1243
    .local v22, "dateObj":Ljava/util/Date;
    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string/jumbo v41, "dd/MM/yyyy"

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v23, "df":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v34

    .line 1245
    .local v34, "text":Ljava/lang/String;
    const v41, 0x7f1001b5

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    .end local v20    # "date":Ljava/lang/Long;
    .end local v22    # "dateObj":Ljava/util/Date;
    .end local v23    # "df":Ljava/text/SimpleDateFormat;
    .end local v34    # "text":Ljava/lang/String;
    :goto_3a6
    const-wide/16 v42, 0x0

    cmp-long v41, v16, v42

    if-lez v41, :cond_3dd

    .line 1251
    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string/jumbo v41, "dd/MM/yyyy"

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1252
    .restart local v23    # "df":Ljava/text/SimpleDateFormat;
    const v41, 0x7f1001bc

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    new-instance v42, Ljava/util/Date;

    const-wide/16 v44, 0x3e8

    mul-long v44, v44, v16

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    .end local v23    # "df":Ljava/text/SimpleDateFormat;
    :cond_3dd
    const-string/jumbo v41, "15000"

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_896

    .line 1256
    const v41, 0x7f100187

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902de

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    :cond_403
    :goto_403
    const-string/jumbo v41, "Restaurant"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_420

    .line 1268
    const v41, 0x7f100189

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/CheckBox;

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1270
    :cond_420
    const-string/jumbo v41, "Dessert"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_43d

    .line 1271
    const v41, 0x7f10018a

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/CheckBox;

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1273
    :cond_43d
    const-string/jumbo v41, "Entertainment"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_45a

    .line 1274
    const v41, 0x7f10018b

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/CheckBox;

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1276
    :cond_45a
    const-string/jumbo v41, "Beauty"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_477

    .line 1277
    const v41, 0x7f10018c

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/CheckBox;

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1279
    :cond_477
    const-string/jumbo v41, "Fashion"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_494

    .line 1280
    const v41, 0x7f10018d

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/CheckBox;

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1282
    :cond_494
    const-string/jumbo v41, "Sport"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_4b1

    .line 1283
    const v41, 0x7f10018e

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/CheckBox;

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1285
    :cond_4b1
    const-string/jumbo v41, "Travel"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_4ce

    .line 1286
    const v41, 0x7f10018f

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/CheckBox;

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1289
    :cond_4ce
    if-eqz v5, :cond_94a

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_94a

    .line 1290
    const-string/jumbo v41, "+0000000000"

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_936

    .line 1291
    const v41, 0x7f1001b7

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    :goto_4f9
    const v41, 0x7f100184

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    const-string/jumbo v42, "Email"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    const v41, 0x7f100191

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    const-string/jumbo v42, "Address"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    const v41, 0x7f100193

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    const-string/jumbo v42, "Zipcode"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "ShippingFirstName"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/bzbs/data/UserLogin;->SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "Address"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/bzbs/data/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1309
    const v41, 0x7f100196

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1310
    .local v39, "toggleLanguage":Lcom/samsung/privilege/control/toggle/ToggleButton;
    const-string/jumbo v41, "Locale"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1311
    .local v14, "Locale":Ljava/lang/String;
    const-string/jumbo v41, "1054"

    move-object/from16 v0, v41

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_964

    .line 1312
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "402705486466922"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_95f

    .line 1313
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn()V

    .line 1333
    :goto_5a5
    const v41, 0x7f100197

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 1334
    .local v36, "textLanguageThai":Landroid/widget/TextView;
    const v41, 0x7f100195

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 1335
    .local v35, "textLanguageEN":Landroid/widget/TextView;
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/privilege/control/toggle/ToggleButton;->IsToggleOn()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_9b5

    .line 1336
    const-string/jumbo v41, "#2ba9e3"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1337
    const-string/jumbo v41, "#ebebeb"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1343
    :goto_5e7
    const v41, 0x7f1001a0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1344
    .local v40, "toggleNotification":Lcom/samsung/privilege/control/toggle/ToggleButton;
    const v41, 0x7f1001a1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 1345
    .local v38, "textNotificationON":Landroid/widget/TextView;
    const v41, 0x7f10019f

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 1347
    .local v37, "textNotificationOFF":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_9d3

    .line 1348
    invoke-virtual/range {v40 .. v40}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn()V

    .line 1349
    const-string/jumbo v41, "#2ba9e3"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1350
    const-string/jumbo v41, "#ebebeb"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1357
    :goto_63d
    const-string/jumbo v41, "CategoryConfig"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1358
    .local v27, "jsonCategoryConfig":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->processJsonCategoryConfig(Ljava/lang/String;)V
    :try_end_64f
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_64f} :catch_6ba

    .line 1363
    .end local v4    # "Address":Ljava/lang/String;
    .end local v5    # "Contact_Number":Ljava/lang/String;
    .end local v6    # "BirthDate":J
    .end local v8    # "Email":Ljava/lang/String;
    .end local v9    # "FirstName":Ljava/lang/String;
    .end local v10    # "Gender":Ljava/lang/String;
    .end local v11    # "Income":Ljava/lang/String;
    .end local v12    # "Interests":Ljava/lang/String;
    .end local v13    # "LastName":Ljava/lang/String;
    .end local v14    # "Locale":Ljava/lang/String;
    .end local v15    # "Zipcode":Ljava/lang/String;
    .end local v16    # "PhonePurchase":J
    .end local v18    # "birth_date":Ljava/lang/String;
    .end local v27    # "jsonCategoryConfig":Ljava/lang/String;
    .end local v28    # "jsonRoot":Lorg/json/JSONObject;
    .end local v32    # "strGender":Ljava/lang/String;
    .end local v33    # "strRegion":Ljava/lang/String;
    .end local v35    # "textLanguageEN":Landroid/widget/TextView;
    .end local v36    # "textLanguageThai":Landroid/widget/TextView;
    .end local v37    # "textNotificationOFF":Landroid/widget/TextView;
    .end local v38    # "textNotificationON":Landroid/widget/TextView;
    .end local v39    # "toggleLanguage":Lcom/samsung/privilege/control/toggle/ToggleButton;
    .end local v40    # "toggleNotification":Lcom/samsung/privilege/control/toggle/ToggleButton;
    :goto_64f
    return-void

    .line 1133
    .restart local v28    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v30    # "profile_source":Ljava/lang/String;
    :cond_650
    :try_start_650
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "2"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7c

    .line 1134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .line 1135
    .local v19, "c":Ljava/util/Calendar;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    .line 1136
    .local v21, "dateNow":Ljava/util/Date;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v42, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "api/profile/me/picture?time="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    const-wide/16 v44, 0x3e8

    div-long v42, v42, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "&type=large&token="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6a1
    .catch Ljava/lang/Exception; {:try_start_650 .. :try_end_6a1} :catch_9f4

    move-result-object v30

    goto/16 :goto_7c

    .line 1149
    .end local v19    # "c":Ljava/util/Calendar;
    .end local v21    # "dateNow":Ljava/util/Date;
    .end local v30    # "profile_source":Ljava/lang/String;
    :catch_6a4
    move-exception v24

    .line 1150
    .local v24, "ex":Ljava/lang/Exception;
    const v41, 0x7f1001ae

    :try_start_6a8
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6b8
    .catch Ljava/lang/Exception; {:try_start_6a8 .. :try_end_6b8} :catch_6ba

    goto/16 :goto_df

    .line 1360
    .end local v24    # "ex":Ljava/lang/Exception;
    .end local v28    # "jsonRoot":Lorg/json/JSONObject;
    :catch_6ba
    move-exception v24

    .line 1361
    .restart local v24    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Error while initial data:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64f

    .line 1158
    .end local v24    # "ex":Ljava/lang/Exception;
    .restart local v28    # "jsonRoot":Lorg/json/JSONObject;
    :cond_6de
    const v41, 0x7f10012f

    :try_start_6e1
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    const v41, 0x7f1001ac

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    const v41, 0x7f1001ad

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_120

    .line 1184
    .restart local v4    # "Address":Ljava/lang/String;
    .restart local v5    # "Contact_Number":Ljava/lang/String;
    .restart local v6    # "BirthDate":J
    .restart local v8    # "Email":Ljava/lang/String;
    .restart local v9    # "FirstName":Ljava/lang/String;
    .restart local v10    # "Gender":Ljava/lang/String;
    .restart local v11    # "Income":Ljava/lang/String;
    .restart local v12    # "Interests":Ljava/lang/String;
    .restart local v13    # "LastName":Ljava/lang/String;
    .restart local v15    # "Zipcode":Ljava/lang/String;
    .restart local v16    # "PhonePurchase":J
    :cond_710
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lcom/bzbs/data/UserLogin;->SetIsCompleteProfileRequire(Landroid/content/Context;Z)Z

    goto/16 :goto_269

    .line 1190
    :cond_71b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lcom/bzbs/data/UserLogin;->SetIsCompleteProfileOptional(Landroid/content/Context;Z)Z

    goto/16 :goto_299

    .line 1196
    :cond_726
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lcom/bzbs/data/UserLogin;->SetIsCompleteProfileShopping(Landroid/content/Context;Z)Z

    goto/16 :goto_2c9

    .line 1208
    .restart local v32    # "strGender":Ljava/lang/String;
    :cond_731
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "male"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_75b

    .line 1209
    const v41, 0x7f1001b2

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902d1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_309

    .line 1211
    :cond_75b
    const v41, 0x7f1001b2

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_309

    .line 1214
    :cond_770
    const v41, 0x7f1001b2

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_309

    .line 1221
    .restart local v33    # "strRegion":Ljava/lang/String;
    :cond_785
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "northeastern"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7af

    .line 1222
    const v41, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902ee

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_349

    .line 1223
    :cond_7af
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "central"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7d9

    .line 1224
    const v41, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902ec

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_349

    .line 1225
    :cond_7d9
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "eastern"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_803

    .line 1226
    const v41, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902ed

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_349

    .line 1227
    :cond_803
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "western"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_82d

    .line 1228
    const v41, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902f1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_349

    .line 1229
    :cond_82d
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "southern"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_857

    .line 1230
    const v41, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902f0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_349

    .line 1232
    :cond_857
    const v41, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_349

    .line 1235
    :cond_86c
    const v41, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_349

    .line 1247
    .restart local v18    # "birth_date":Ljava/lang/String;
    :cond_881
    const v41, 0x7f1001b5

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a6

    .line 1257
    :cond_896
    const-string/jumbo v41, "25000"

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_8be

    .line 1258
    const v41, 0x7f100187

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902df

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_403

    .line 1259
    :cond_8be
    const-string/jumbo v41, "35000"

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_8e6

    .line 1260
    const v41, 0x7f100187

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902e0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_403

    .line 1261
    :cond_8e6
    const-string/jumbo v41, "45000"

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_90e

    .line 1262
    const v41, 0x7f100187

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902e1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_403

    .line 1263
    :cond_90e
    const-string/jumbo v41, "45001-"

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_403

    .line 1264
    const v41, 0x7f100187

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v42, 0x7f0902e2

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_403

    .line 1293
    :cond_936
    const v41, 0x7f1001b7

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4f9

    .line 1296
    :cond_94a
    const v41, 0x7f1001b7

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/EditText;

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4f9

    .line 1315
    .restart local v14    # "Locale":Ljava/lang/String;
    .restart local v39    # "toggleLanguage":Lcom/samsung/privilege/control/toggle/ToggleButton;
    :cond_95f
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff()V

    goto/16 :goto_5a5

    .line 1317
    :cond_964
    const-string/jumbo v41, "1108"

    move-object/from16 v0, v41

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_98a

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "768830479847872"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_985

    .line 1319
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn()V

    goto/16 :goto_5a5

    .line 1321
    :cond_985
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff()V

    goto/16 :goto_5a5

    .line 1323
    :cond_98a
    const-string/jumbo v41, "1109"

    move-object/from16 v0, v41

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9b0

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "517155661760483"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9ab

    .line 1325
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn()V

    goto/16 :goto_5a5

    .line 1327
    :cond_9ab
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff()V

    goto/16 :goto_5a5

    .line 1330
    :cond_9b0
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff()V

    goto/16 :goto_5a5

    .line 1339
    .restart local v35    # "textLanguageEN":Landroid/widget/TextView;
    .restart local v36    # "textLanguageThai":Landroid/widget/TextView;
    :cond_9b5
    const-string/jumbo v41, "#ebebeb"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1340
    const-string/jumbo v41, "#2ba9e3"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5e7

    .line 1352
    .restart local v37    # "textNotificationOFF":Landroid/widget/TextView;
    .restart local v38    # "textNotificationON":Landroid/widget/TextView;
    .restart local v40    # "toggleNotification":Lcom/samsung/privilege/control/toggle/ToggleButton;
    :cond_9d3
    invoke-virtual/range {v40 .. v40}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff()V

    .line 1353
    const-string/jumbo v41, "#ebebeb"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1354
    const-string/jumbo v41, "#2ba9e3"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_9f2
    .catch Ljava/lang/Exception; {:try_start_6e1 .. :try_end_9f2} :catch_6ba

    goto/16 :goto_63d

    .line 1140
    .end local v4    # "Address":Ljava/lang/String;
    .end local v5    # "Contact_Number":Ljava/lang/String;
    .end local v6    # "BirthDate":J
    .end local v8    # "Email":Ljava/lang/String;
    .end local v9    # "FirstName":Ljava/lang/String;
    .end local v10    # "Gender":Ljava/lang/String;
    .end local v11    # "Income":Ljava/lang/String;
    .end local v12    # "Interests":Ljava/lang/String;
    .end local v13    # "LastName":Ljava/lang/String;
    .end local v14    # "Locale":Ljava/lang/String;
    .end local v15    # "Zipcode":Ljava/lang/String;
    .end local v16    # "PhonePurchase":J
    .end local v18    # "birth_date":Ljava/lang/String;
    .end local v32    # "strGender":Ljava/lang/String;
    .end local v33    # "strRegion":Ljava/lang/String;
    .end local v35    # "textLanguageEN":Landroid/widget/TextView;
    .end local v36    # "textLanguageThai":Landroid/widget/TextView;
    .end local v37    # "textNotificationOFF":Landroid/widget/TextView;
    .end local v38    # "textNotificationON":Landroid/widget/TextView;
    .end local v39    # "toggleLanguage":Lcom/samsung/privilege/control/toggle/ToggleButton;
    .end local v40    # "toggleNotification":Lcom/samsung/privilege/control/toggle/ToggleButton;
    :catch_9f4
    move-exception v41

    goto/16 :goto_aa
.end method

.method private requestBrowsePhoto()V
    .registers 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string/jumbo v1, "Select Picture"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 233
    return-void
.end method

.method private requestOpenCamera()V
    .registers 4

    .prologue
    .line 198
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent_camera":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 224
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 777
    const-string/jumbo v0, "gCategoryConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gCategoryConfig:Ljava/lang/String;

    .line 779
    :cond_1a
    return-void
.end method

.method private showMessageOKCancel(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "okListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 912
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 913
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    .line 914
    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Cancel"

    const/4 v2, 0x0

    .line 915
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 916
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 917
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 918
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->finish()V

    .line 1367
    return-void
.end method

.method public doPointStatement(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1371
    .local v1, "tokenBzBs":Ljava/lang/String;
    if-eqz v1, :cond_48

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->WEB_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Views/Point/Expire.aspx?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1374
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1375
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    const-string/jumbo v3, "enable_webview_back"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1377
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 1379
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_48
    return-void
.end method

.method public doUpdate(Landroid/view/View;)V
    .registers 42
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1391
    const-string/jumbo v33, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 1392
    .local v9, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v33

    if-nez v33, :cond_26

    .line 1393
    const v33, 0x7f09024b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1770
    :cond_25
    :goto_25
    return-void

    .line 1397
    :cond_26
    const v33, 0x7f1001ac

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 1398
    .local v15, "editFirstname":Landroid/widget/EditText;
    const v33, 0x7f1001ad

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 1399
    .local v16, "editLastname":Landroid/widget/EditText;
    const v33, 0x7f1001af

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 1400
    .local v18, "editShippingFirstname":Landroid/widget/EditText;
    const v33, 0x7f1001b0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    .line 1401
    .local v19, "editShippingLastname":Landroid/widget/EditText;
    const v33, 0x7f1001b2

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1402
    .local v27, "textGender":Landroid/widget/TextView;
    const v33, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 1403
    .local v30, "textRegion":Landroid/widget/TextView;
    const v33, 0x7f1001b5

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1404
    .local v26, "textBirthday":Landroid/widget/TextView;
    const v33, 0x7f1001b7

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 1405
    .local v17, "editMobile":Landroid/widget/EditText;
    const v33, 0x7f100184

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 1406
    .local v14, "editEmail":Landroid/widget/EditText;
    const v33, 0x7f100191

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 1407
    .local v13, "editAddress":Landroid/widget/EditText;
    const v33, 0x7f100193

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    .line 1409
    .local v20, "editZipcode":Landroid/widget/EditText;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-gtz v33, :cond_db

    .line 1410
    const v33, 0x7f0902c6

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1412
    :cond_db
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-gtz v33, :cond_101

    .line 1413
    const v33, 0x7f0902c7

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1417
    :cond_101
    const/16 v22, 0x0

    .line 1418
    .local v22, "isCanUpdate":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "2"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1ad

    .line 1419
    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_197

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_197

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_197

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_197

    .line 1420
    const/16 v22, 0x1

    .line 1438
    :goto_15a
    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_1fa

    .line 1439
    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->isValidEmail(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_1fa

    .line 1440
    const/16 v22, 0x0

    .line 1442
    const v33, 0x7f0902c8

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v14}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_25

    .line 1422
    :cond_197
    const/16 v22, 0x0

    .line 1424
    const v33, 0x7f0902c3

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1428
    :cond_1ad
    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1e0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1e0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1e4

    .line 1429
    :cond_1e0
    const/16 v22, 0x1

    goto/16 :goto_15a

    .line 1431
    :cond_1e4
    const/16 v22, 0x0

    .line 1433
    const v33, 0x7f0902c2

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1448
    :cond_1fa
    const/16 v33, 0x1

    move/from16 v0, v22

    move/from16 v1, v33

    if-ne v0, v1, :cond_25

    .line 1450
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v34, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "api/profile/me"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1451
    .local v32, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "url= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    new-instance v23, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v23 .. v23}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1454
    .local v23, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v33, "token"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "2"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8d5

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2a6

    .line 1462
    :try_start_271
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1463
    .local v7, "bos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    sget-object v34, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v35, 0x64

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1464
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 1465
    .local v6, "bitmapdata":[B
    const-string/jumbo v33, "data"

    new-instance v34, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_2a6} :catch_8cf

    .line 1471
    .end local v6    # "bitmapdata":[B
    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_2a6
    :goto_2a6
    const-string/jumbo v33, "firstname"

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "firstname "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string/jumbo v33, "lastname"

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "lastname "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string/jumbo v33, "ShippingFirstName"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "ShippingFirstName "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    const-string/jumbo v33, "ShippingLastName"

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "ShippingLastName "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :goto_38a
    const-string/jumbo v33, "email"

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "email "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902d0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_949

    .line 1492
    const-string/jumbo v33, "gender"

    const-string/jumbo v34, "female"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "gender female"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    :cond_3ff
    :goto_3ff
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_47b

    .line 1501
    :try_start_410
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v33, "dd/MM/yyyy"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v21, "formatter":Ljava/text/SimpleDateFormat;
    const-string/jumbo v33, "UTC"

    invoke-static/range {v33 .. v33}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1503
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 1504
    .local v11, "date":Ljava/util/Date;
    const-string/jumbo v33, "birthdate"

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "birthdate "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47b
    .catch Ljava/text/ParseException; {:try_start_410 .. :try_end_47b} :catch_987

    .line 1512
    .end local v11    # "date":Ljava/util/Date;
    .end local v21    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_47b
    :goto_47b
    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1513
    .local v10, "contact_number":Ljava/lang/String;
    if-eqz v10, :cond_98d

    const-string/jumbo v33, ""

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_98d

    .line 1518
    :goto_490
    const-string/jumbo v33, "contact_number"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "contact_number "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902ef

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_992

    .line 1522
    const-string/jumbo v33, "region"

    const-string/jumbo v34, "northern"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "region northern"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    :cond_4f5
    :goto_4f5
    if-eqz v13, :cond_ac8

    const-string/jumbo v33, ""

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_ac8

    .line 1542
    const-string/jumbo v33, "address"

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "address "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    if-eqz v20, :cond_583

    const-string/jumbo v33, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_583

    .line 1552
    const-string/jumbo v33, "zipcode"

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "zipcode "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :cond_583
    const v33, 0x7f1001bc

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 1557
    .local v29, "textPurchase":Landroid/widget/TextView;
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_60c

    .line 1559
    :try_start_5a1
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v33, "dd/MM/yyyy"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1560
    .restart local v21    # "formatter":Ljava/text/SimpleDateFormat;
    const-string/jumbo v33, "UTC"

    invoke-static/range {v33 .. v33}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1561
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 1562
    .restart local v11    # "date":Ljava/util/Date;
    const-string/jumbo v33, "PhonePurchase"

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "PhonePurchase="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60c
    .catch Ljava/text/ParseException; {:try_start_5a1 .. :try_end_60c} :catch_ae2

    .line 1569
    .end local v11    # "date":Ljava/util/Date;
    .end local v21    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_60c
    :goto_60c
    const v33, 0x7f100187

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1570
    .local v28, "textIncomeLevel":Landroid/widget/TextView;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902de

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_ae8

    .line 1571
    const-string/jumbo v33, "Income"

    const-string/jumbo v34, "15000"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "Income=15000"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    :cond_651
    :goto_651
    const-string/jumbo v24, ""

    .line 1588
    .local v24, "strInterest":Ljava/lang/String;
    const-string/jumbo v25, ""

    .line 1589
    .local v25, "strInterestComma":Ljava/lang/String;
    const v33, 0x7f100189

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    invoke-virtual/range {v33 .. v33}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_693

    .line 1590
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "Restaurant"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1591
    const-string/jumbo v25, ","

    .line 1593
    :cond_693
    const v33, 0x7f10018a

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    invoke-virtual/range {v33 .. v33}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_6cf

    .line 1594
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "Dessert"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1595
    const-string/jumbo v25, ","

    .line 1597
    :cond_6cf
    const v33, 0x7f10018b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    invoke-virtual/range {v33 .. v33}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_70b

    .line 1598
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "Entertainment"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1599
    const-string/jumbo v25, ","

    .line 1601
    :cond_70b
    const v33, 0x7f10018c

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    invoke-virtual/range {v33 .. v33}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_747

    .line 1602
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "Beauty"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1603
    const-string/jumbo v25, ","

    .line 1605
    :cond_747
    const v33, 0x7f10018d

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    invoke-virtual/range {v33 .. v33}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_783

    .line 1606
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "Fashion"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1607
    const-string/jumbo v25, ","

    .line 1609
    :cond_783
    const v33, 0x7f10018e

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    invoke-virtual/range {v33 .. v33}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7bf

    .line 1610
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "Sport"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1611
    const-string/jumbo v25, ","

    .line 1613
    :cond_7bf
    const v33, 0x7f10018f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    invoke-virtual/range {v33 .. v33}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7fb

    .line 1614
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "Travel"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1615
    const-string/jumbo v25, ","

    .line 1617
    :cond_7fb
    if-eqz v24, :cond_837

    const-string/jumbo v33, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_837

    .line 1618
    const-string/jumbo v33, "Interests"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Interests="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    :cond_837
    const v33, 0x7f1001a0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1649
    .local v31, "toggleNotification":Lcom/samsung/privilege/control/toggle/ToggleButton;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_bda

    .line 1650
    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/control/toggle/ToggleButton;->IsToggleOn()Z

    move-result v33

    if-eqz v33, :cond_bc8

    .line 1665
    :cond_85a
    :goto_85a
    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/control/toggle/ToggleButton;->IsToggleOn()Z

    move-result v33

    if-eqz v33, :cond_bf2

    .line 1666
    const-string/jumbo v33, "device_noti_enable"

    const-string/jumbo v34, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string/jumbo v33, "NotificationEnable"

    const-string/jumbo v34, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "device_noti_enable=true"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    :goto_88a
    new-instance v8, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v8}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1689
    .local v8, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string/jumbo v33, ""

    const v34, 0x7f09026f

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x1

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    new-instance v34, Lcom/samsung/privilege/activity/ProfileActivity$20;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity$20;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    move-object/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_25

    .line 1466
    .end local v8    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v10    # "contact_number":Ljava/lang/String;
    .end local v24    # "strInterest":Ljava/lang/String;
    .end local v25    # "strInterestComma":Ljava/lang/String;
    .end local v28    # "textIncomeLevel":Landroid/widget/TextView;
    .end local v29    # "textPurchase":Landroid/widget/TextView;
    .end local v31    # "toggleNotification":Lcom/samsung/privilege/control/toggle/ToggleButton;
    :catch_8cf
    move-exception v12

    .line 1467
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2a6

    .line 1481
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_8d5
    const-string/jumbo v33, "ShippingFirstName"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "firstname "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const-string/jumbo v33, "ShippingLastName"

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "lastname "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38a

    .line 1494
    :cond_949
    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902d1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3ff

    .line 1495
    const-string/jumbo v33, "gender"

    const-string/jumbo v34, "male"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "gender male"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3ff

    .line 1506
    :catch_987
    move-exception v12

    .line 1507
    .local v12, "e":Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_47b

    .line 1516
    .end local v12    # "e":Ljava/text/ParseException;
    .restart local v10    # "contact_number":Ljava/lang/String;
    :cond_98d
    const-string/jumbo v10, "+0000000000"

    goto/16 :goto_490

    .line 1524
    :cond_992
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902ee

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9d0

    .line 1525
    const-string/jumbo v33, "region"

    const-string/jumbo v34, "northeastern"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "region northeastern"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f5

    .line 1527
    :cond_9d0
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902ec

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a0e

    .line 1528
    const-string/jumbo v33, "region"

    const-string/jumbo v34, "central"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "region central"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f5

    .line 1530
    :cond_a0e
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902ed

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a4c

    .line 1531
    const-string/jumbo v33, "region"

    const-string/jumbo v34, "eastern"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "region eastern"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f5

    .line 1533
    :cond_a4c
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902f1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a8a

    .line 1534
    const-string/jumbo v33, "region"

    const-string/jumbo v34, "western"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "region western"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f5

    .line 1536
    :cond_a8a
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902f0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4f5

    .line 1537
    const-string/jumbo v33, "region"

    const-string/jumbo v34, "southern"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "region southern"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f5

    .line 1545
    :cond_ac8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    if-eqz v33, :cond_25

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    const v34, 0x7f0902c5

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1564
    .restart local v29    # "textPurchase":Landroid/widget/TextView;
    :catch_ae2
    move-exception v12

    .line 1565
    .restart local v12    # "e":Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_60c

    .line 1573
    .end local v12    # "e":Ljava/text/ParseException;
    .restart local v28    # "textIncomeLevel":Landroid/widget/TextView;
    :cond_ae8
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902df

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b22

    .line 1574
    const-string/jumbo v33, "Income"

    const-string/jumbo v34, "25000"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "Income=25000"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_651

    .line 1576
    :cond_b22
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902e0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b5c

    .line 1577
    const-string/jumbo v33, "Income"

    const-string/jumbo v34, "35000"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "Income=35000"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_651

    .line 1579
    :cond_b5c
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const v34, 0x7f0902e1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b96

    .line 1580
    const-string/jumbo v33, "Income"

    const-string/jumbo v34, "45000"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "Income=45000"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_651

    .line 1582
    :cond_b96
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "45,001"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_651

    .line 1583
    const-string/jumbo v33, "Income"

    const-string/jumbo v34, "45001-"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "Income=45001-"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_651

    .line 1653
    .restart local v24    # "strInterest":Ljava/lang/String;
    .restart local v25    # "strInterestComma":Ljava/lang/String;
    .restart local v31    # "toggleNotification":Lcom/samsung/privilege/control/toggle/ToggleButton;
    :cond_bc8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/bzbs/data/UserLogin;->SetIsNotificationOn(Landroid/content/Context;Z)Z

    .line 1654
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/util/GCMUtil;->unRegisterGCM(Landroid/content/Context;)V

    goto/16 :goto_85a

    .line 1657
    :cond_bda
    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/control/toggle/ToggleButton;->IsToggleOn()Z

    move-result v33

    if-eqz v33, :cond_85a

    .line 1658
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/bzbs/data/UserLogin;->SetIsNotificationOn(Landroid/content/Context;Z)Z

    .line 1659
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/util/GCMUtil;->registerGCM(Landroid/content/Context;)V

    goto/16 :goto_85a

    .line 1670
    :cond_bf2
    const-string/jumbo v33, "device_noti_enable"

    const-string/jumbo v34, "false"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string/jumbo v33, "NotificationEnable"

    const-string/jumbo v34, "false"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "device_noti_enable=false"

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_88a
.end method

.method public getOriginalImagePath()Ljava/lang/String;
    .registers 10

    .prologue
    .line 730
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 731
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/activity/ProfileActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 734
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "_data"

    .line 735
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 736
    .local v6, "column_index_data":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    .line 738
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result-object v0

    .line 740
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "column_index_data":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_21
    return-object v0

    .line 739
    :catch_22
    move-exception v8

    .line 740
    .local v8, "ex":Ljava/lang/Exception;
    const-string/jumbo v0, ""

    goto :goto_21
.end method

.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 745
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 746
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/activity/ProfileActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 747
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_22

    .line 751
    const-string/jumbo v0, "_data"

    .line 752
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 753
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 754
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 756
    .end local v6    # "column_index":I
    :cond_22
    return-object v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 24
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 647
    invoke-super/range {p0 .. p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 649
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_79

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_79

    .line 650
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 651
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_data"

    aput-object v3, v4, v2

    .line 652
    .local v4, "filePathColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iget-object v3, v3, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 653
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 654
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 655
    .local v10, "columnIndex":I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 656
    .local v14, "filePath":Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 658
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 659
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "image-path"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    const-string/jumbo v2, "scale"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    const-string/jumbo v2, "aspectX"

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    const-string/jumbo v2, "aspectY"

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 726
    .end local v4    # "filePathColumn":[Ljava/lang/String;
    .end local v10    # "columnIndex":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v14    # "filePath":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_78
    :goto_78
    return-void

    .line 666
    :cond_79
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_12d

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_12d

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getOriginalImagePath()Ljava/lang/String;

    move-result-object v18

    .line 668
    .local v18, "originalImagePath":Ljava/lang/String;
    if-eqz v18, :cond_cf

    const-string/jumbo v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cf

    .line 690
    :goto_94
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "image-path"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string/jumbo v2, "scale"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    const-string/jumbo v2, "aspectX"

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    const-string/jumbo v2, "aspectY"

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_78

    .line 723
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "originalImagePath":Ljava/lang/String;
    :catch_cd
    move-exception v2

    goto :goto_78

    .line 671
    .restart local v18    # "originalImagePath":Ljava/lang/String;
    :cond_cf
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    .line 672
    .local v19, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 673
    .local v9, "bytes":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 674
    new-instance v12, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10b} :catch_cd

    .line 677
    .local v12, "destination":Ljava/io/File;
    :try_start_10b
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 678
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 679
    .local v15, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 680
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_11d
    .catch Ljava/io/FileNotFoundException; {:try_start_10b .. :try_end_11d} :catch_123
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_11d} :catch_128
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_11d} :catch_cd

    .line 687
    .end local v15    # "fo":Ljava/io/FileOutputStream;
    :goto_11d
    :try_start_11d
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_94

    .line 681
    :catch_123
    move-exception v13

    .line 682
    .local v13, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_11d

    .line 683
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_128
    move-exception v13

    .line 684
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11d

    .line 700
    .end local v9    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "destination":Ljava/io/File;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v18    # "originalImagePath":Ljava/lang/String;
    .end local v19    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_12d
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_78

    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_78

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    const-string/jumbo v3, "image-path"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iget-object v2, v2, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/ImageUtils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 704
    .local v8, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_17c

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iput-object v8, v2, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 707
    const v2, 0x7f1001ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 708
    .local v16, "imageProfile":Landroid/widget/ImageView;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 709
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 711
    if-eqz v8, :cond_78

    .line 712
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_179

    .line 713
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 715
    :cond_179
    const/4 v8, 0x0

    goto/16 :goto_78

    .line 718
    .end local v16    # "imageProfile":Landroid/widget/ImageView;
    :cond_17c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_183} :catch_cd

    goto/16 :goto_78
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x17

    const/4 v7, 0x1

    .line 832
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_b4

    .line 908
    :cond_b
    :goto_b
    return v7

    .line 835
    :pswitch_c
    :try_start_c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_34

    .line 836
    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 837
    .local v2, "hasPermissionReadStorage":I
    if-eqz v2, :cond_30

    .line 849
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    const/16 v5, 0xc8

    invoke-virtual {p0, v4, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_28

    goto :goto_b

    .line 856
    .end local v2    # "hasPermissionReadStorage":I
    :catch_28
    move-exception v0

    .line 857
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "Can not browse photo!"

    invoke-direct {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->showToast(Ljava/lang/String;)V

    goto :goto_b

    .line 851
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "hasPermissionReadStorage":I
    :cond_30
    :try_start_30
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->requestBrowsePhoto()V

    goto :goto_b

    .line 854
    .end local v2    # "hasPermissionReadStorage":I
    :cond_34
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->requestBrowsePhoto()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_28

    goto :goto_b

    .line 863
    :pswitch_38
    :try_start_38
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_6f

    .line 864
    const-string/jumbo v4, "android.permission.CAMERA"

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 865
    .local v1, "hasPermissionCamera":I
    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 866
    .restart local v2    # "hasPermissionReadStorage":I
    if-nez v1, :cond_4e

    if-eqz v2, :cond_6b

    .line 878
    :cond_4e
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.CAMERA"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_62} :catch_63

    goto :goto_b

    .line 885
    .end local v1    # "hasPermissionCamera":I
    .end local v2    # "hasPermissionReadStorage":I
    :catch_63
    move-exception v0

    .line 886
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "Can not open camera!"

    invoke-direct {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->showToast(Ljava/lang/String;)V

    goto :goto_b

    .line 880
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "hasPermissionCamera":I
    .restart local v2    # "hasPermissionReadStorage":I
    :cond_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->requestOpenCamera()V

    goto :goto_b

    .line 883
    .end local v1    # "hasPermissionCamera":I
    .end local v2    # "hasPermissionReadStorage":I
    :cond_6f
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->requestOpenCamera()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_63

    goto :goto_b

    .line 891
    :pswitch_73
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    if-eqz v4, :cond_b

    .line 892
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iget-object v4, v4, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_92

    .line 893
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iget-object v4, v4, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 894
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iget-object v4, v4, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 896
    :cond_8e
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iput-object v6, v4, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 898
    :cond_92
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iget-object v4, v4, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v4, :cond_9c

    .line 899
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iput-object v6, v4, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 901
    :cond_9c
    const v4, 0x7f1001ab

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 902
    .local v3, "imageProfile":Landroid/widget/ImageView;
    if-eqz v3, :cond_b

    .line 903
    const v4, 0x7f020359

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/bzbs/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_b

    .line 832
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_38
        :pswitch_73
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v1, 0x7f04003d

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->setContentView(I)V

    .line 119
    const v1, 0x10300f0

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->setTheme(I)V

    .line 121
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "protected void onCreate(Bundle savedInstanceState) {"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 127
    const v1, 0x7f1000b6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 131
    if-nez p1, :cond_70

    .line 137
    :goto_4b
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->initialLayout()V

    .line 138
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->initialBeacon()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getProfileData()V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "force_update"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    .local v0, "force_update":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    .line 144
    const-string/jumbo v1, "Please completed your profile data:\n- Firstname\n- Lastname\n- Address"

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :cond_69
    const-string/jumbo v1, "My Account"

    invoke-static {v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 148
    return-void

    .line 134
    .end local v0    # "force_update":Z
    :cond_70
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_4b
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .param p1, "cm"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "cminf"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 818
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 819
    const-string/jumbo v0, "Post photo on profile"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 820
    const-string/jumbo v0, "Choose From Gallery"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 821
    const-string/jumbo v0, "Take Photo"

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 823
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gObjCameraData:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    .line 824
    const-string/jumbo v0, "Delete Photo"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 828
    :goto_28
    return-void

    .line 826
    :cond_29
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_28
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .param p1, "id"    # I

    .prologue
    .line 801
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 802
    .local v7, "date":Ljava/util/Date;
    packed-switch p1, :pswitch_data_6a

    .line 813
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 805
    :pswitch_a
    const v0, 0x7f1001b5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 806
    .local v8, "textBirthday":Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 807
    .local v6, "arrDate":[Ljava/lang/String;
    array-length v0, v6

    const/4 v1, 0x3

    if-lt v0, v1, :cond_52

    .line 808
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/4 v1, 0x2

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_9

    .line 810
    :cond_52
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v3, v1, 0x76c

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_9

    .line 802
    nop

    :pswitch_data_6a
    .packed-switch 0xa
        :pswitch_a
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v4, 0x0

    .line 156
    sparse-switch p1, :sswitch_data_88

    .line 193
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 195
    :goto_7
    return-void

    .line 158
    :sswitch_8
    aget v3, p3, v4

    if-nez v3, :cond_10

    .line 160
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->requestOpenCamera()V

    goto :goto_7

    .line 163
    :cond_10
    const-string/jumbo v3, "PERMISSION CAMERA And READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 167
    :sswitch_1b
    aget v3, p3, v4

    if-nez v3, :cond_23

    .line 169
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->requestBrowsePhoto()V

    goto :goto_7

    .line 172
    :cond_23
    const-string/jumbo v3, "PERMISSION READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 176
    :sswitch_2e
    const v3, 0x7f10019b

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    .local v0, "textBeaconOFF":Landroid/widget/TextView;
    const v3, 0x7f10019d

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 178
    .local v1, "textBeaconON":Landroid/widget/TextView;
    const v3, 0x7f10019c

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 179
    .local v2, "toggleBeacon":Lcom/samsung/privilege/control/toggle/ToggleButton;
    aget v3, p3, v4

    if-nez v3, :cond_65

    .line 181
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn()V

    .line 182
    const-string/jumbo v3, "#2ba9e3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    const-string/jumbo v3, "#ebebeb"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 186
    :cond_65
    const-string/jumbo v3, "PERMISSION BEACON Denied"

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff()V

    .line 188
    const-string/jumbo v3, "#ebebeb"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    const-string/jumbo v3, "#2ba9e3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 156
    nop

    :sswitch_data_88
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_1b
        0x12c -> :sswitch_2e
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 770
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 771
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 640
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 642
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->checkPermissionBeacon()V

    .line 643
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 761
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 762
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 765
    const-string/jumbo v0, "gCategoryConfig"

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->gCategoryConfig:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    return-void
.end method
