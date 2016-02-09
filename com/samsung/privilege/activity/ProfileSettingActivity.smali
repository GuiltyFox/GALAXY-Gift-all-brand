.class public Lcom/samsung/privilege/activity/ProfileSettingActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ProfileSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;,
        Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;
    }
.end annotation


# static fields
.field private static final DIALOG_ID_DATE:I = 0xa

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final RC_BrowseImage:I = 0x1

.field private static final RC_TakePhoto:I = 0x2

.field private static mediaFile:Ljava/io/File;

.field private static path:Ljava/lang/String;


# instance fields
.field private final FOLDER_IMAGE:Ljava/lang/String;

.field private final LOGCAT:Ljava/lang/String;

.field private LayoutSelectLanguage:Landroid/widget/LinearLayout;

.field private final MENU_BrowseImage:I

.field private final MENU_DeletePhoto:I

.field private final MENU_TakePhoto:I

.field private final MOBILE_DEFAULT:Ljava/lang/String;

.field private SelectDateStart:Landroid/view/View$OnTouchListener;

.field private fileUri:Landroid/net/Uri;

.field private gFont:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gImgDisplayLanguage:Landroid/widget/ImageView;

.field private gImgLogoProfileSettingWith:Landroid/widget/ImageView;

.field private gImgProfile:Landroid/widget/ImageView;

.field private gIsSelectStartDateTime:Z

.field private gObjCameraData:Lcom/samsung/privilege/CameraData;

.field private gPbLoadingProfile:Landroid/widget/ProgressBar;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gToggleNotificationButton:Landroid/widget/ToggleButton;

.field private gTvAddress:Landroid/widget/EditText;

.field private gTvBirthday:Landroid/widget/EditText;

.field private gTvDisplayLanguage:Landroid/widget/TextView;

.field private gTvEmail:Landroid/widget/EditText;

.field private gTvFirstName:Landroid/widget/EditText;

.field private gTvLastName:Landroid/widget/EditText;

.field private gTvLogoProfileSettingWith:Landroid/widget/TextView;

.field private gTvMobile:Landroid/widget/EditText;

.field private gTvSex:Landroid/widget/EditText;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private tvFullName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 75
    const-string v0, "profile.setting"

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->LOGCAT:Ljava/lang/String;

    .line 77
    const-string v0, "GalaxyGift"

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->FOLDER_IMAGE:Ljava/lang/String;

    .line 78
    const-string v0, "+0000000000"

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->MOBILE_DEFAULT:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->MENU_BrowseImage:I

    .line 89
    iput v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->MENU_TakePhoto:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->MENU_DeletePhoto:I

    .line 95
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gIsSelectStartDateTime:Z

    .line 394
    new-instance v0, Lcom/samsung/privilege/activity/ProfileSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$1;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->SelectDateStart:Landroid/view/View$OnTouchListener;

    .line 403
    new-instance v0, Lcom/samsung/privilege/activity/ProfileSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$2;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 74
    return-void
.end method

.method private ProcessJsonProfileAndGenUI(Ljava/lang/String;)V
    .registers 15
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 518
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 523
    .local v6, "jsonRoot":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "FirstName"

    invoke-static {v6, v11}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "LastName"

    invoke-static {v6, v11}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    const-string v10, "ShippingFirstName"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    const-string v10, "ShippingLastName"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 527
    const-string v9, "Gender"

    invoke-static {v6, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, "strGender":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_74

    .line 529
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "F"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "female"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_135

    .line 530
    :cond_6d
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    const-string v10, "Female"

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_74
    :goto_74
    const-string v9, "BirthDate"

    invoke-static {v6, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "birth_date":Ljava/lang/String;
    const-string v9, "profile.setting"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "birth_date "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_be

    .line 540
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 541
    .local v2, "date":Ljava/lang/Long;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 543
    .local v3, "dateObj":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v9, "dd/MM/yyyy"

    invoke-direct {v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 544
    .local v4, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 545
    .local v8, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 570
    .end local v2    # "date":Ljava/lang/Long;
    .end local v3    # "dateObj":Ljava/util/Date;
    .end local v4    # "df":Ljava/text/SimpleDateFormat;
    .end local v8    # "text":Ljava/lang/String;
    :cond_be
    const-string v9, "Contact_Number"

    invoke-static {v6, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "Contact_Number":Ljava/lang/String;
    if-eqz v0, :cond_17c

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17c

    .line 572
    const-string v9, "+0000000000"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_175

    .line 573
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 581
    :goto_dd
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    const-string v10, "Email"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    const-string v10, "Address"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Address"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 594
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_185

    .line 595
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgLogoProfileSettingWith:Landroid/widget/ImageView;

    const v10, 0x7f0202d9

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    const v10, 0x7f0a00e5

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090046

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 608
    .end local v0    # "Contact_Number":Ljava/lang/String;
    .end local v1    # "birth_date":Ljava/lang/String;
    .end local v6    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "strGender":Ljava/lang/String;
    :cond_134
    :goto_134
    return-void

    .line 531
    .restart local v6    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v7    # "strGender":Ljava/lang/String;
    :cond_135
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "M"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_151

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "male"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 532
    :cond_151
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    const-string v10, "Male"

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_158} :catch_15a

    goto/16 :goto_74

    .line 604
    .end local v6    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "strGender":Ljava/lang/String;
    :catch_15a
    move-exception v5

    .line 605
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "OAT"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "error-loadata"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v9, "Error while load profile data."

    invoke-direct {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_134

    .line 575
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "Contact_Number":Ljava/lang/String;
    .restart local v1    # "birth_date":Ljava/lang/String;
    .restart local v6    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v7    # "strGender":Ljava/lang/String;
    :cond_175
    :try_start_175
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_dd

    .line 578
    :cond_17c
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_dd

    .line 598
    :cond_185
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_134

    .line 599
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgLogoProfileSettingWith:Landroid/widget/ImageView;

    const v10, 0x7f020333

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 600
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    const-string v10, "Device"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090041

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_1b4} :catch_15a

    goto :goto_134
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity;Z)V
    .registers 2

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gIsSelectStartDateTime:Z

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gIsSelectStartDateTime:Z

    return v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 1

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->initialLayout()V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 1

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfilePicture()V

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 1

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfileData()V

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->ProcessJsonProfileAndGenUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    return-object v0
.end method

.method private getOutputMediaFile(I)Ljava/io/File;
    .registers 7
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 352
    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "GalaxyGift"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    .local v0, "mediaStorageDir":Ljava/io/File;
    const-string v3, "profile.setting"

    const-string v4, "begin check mediaStorageDir.exists()"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    .line 358
    const-string v3, "profile.setting"

    const-string v4, "begin check mediaStorageDir.mkdirs()"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_30

    .line 360
    const-string v3, "profile.setting"

    const-string v4, "failed to create directory"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_2f
    :goto_2f
    return-object v2

    .line 365
    :cond_30
    const-string v3, "profile.setting"

    const-string v4, "end check mediaStorageDir.exists()"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "timeStamp":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2f

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BB_IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/activity/ProfileSettingActivity;->path:Ljava/lang/String;

    .line 372
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BB_IMG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    .line 377
    sget-object v2, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    goto :goto_2f
.end method

.method private getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 341
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 343
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 345
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getProfileData()V
    .registers 5

    .prologue
    .line 474
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me/user?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "url":Ljava/lang/String;
    const-string v1, "profile.setting"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v1, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method private getProfilePicture()V
    .registers 14

    .prologue
    .line 449
    :try_start_0
    const-string v11, ""

    .line 450
    .local v11, "profile_source":Ljava/lang/String;
    const-string v0, "profile_source"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "catch_profile_source":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 452
    const-string v0, "profile.setting"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "catch_profile_source "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lcom/bitmapfun/util/ImageFetcher;->IMAGE_LOADING_TRANS:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 455
    :cond_33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 456
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 457
    .local v9, "date":Ljava/util/Date;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/Date;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 459
    .local v12, "strDate":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://graph.facebook.com/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    .end local v9    # "date":Ljava/util/Date;
    .end local v11    # "profile_source":Ljava/lang/String;
    .end local v12    # "strDate":Ljava/lang/String;
    .local v3, "profile_source":Ljava/lang/String;
    :goto_96
    const-string v0, "profile.setting"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "profile_source "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const v6, 0x7f02039f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 467
    const-string v0, "profile_source"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 471
    .end local v1    # "catch_profile_source":Ljava/lang/String;
    .end local v3    # "profile_source":Ljava/lang/String;
    :goto_bf
    return-void

    .line 460
    .restart local v1    # "catch_profile_source":Ljava/lang/String;
    .restart local v11    # "profile_source":Ljava/lang/String;
    :cond_c0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 461
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 462
    .local v8, "c":Ljava/util/Calendar;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 463
    .local v10, "dateNow":Ljava/util/Date;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me/picture?time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&type=large&token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10d} :catch_10f

    move-result-object v3

    .end local v11    # "profile_source":Ljava/lang/String;
    .restart local v3    # "profile_source":Ljava/lang/String;
    goto :goto_96

    .line 468
    .end local v1    # "catch_profile_source":Ljava/lang/String;
    .end local v3    # "profile_source":Ljava/lang/String;
    .end local v8    # "c":Ljava/util/Calendar;
    .end local v10    # "dateNow":Ljava/util/Date;
    :catch_10f
    move-exception v0

    goto :goto_bf

    .restart local v1    # "catch_profile_source":Ljava/lang/String;
    .restart local v11    # "profile_source":Ljava/lang/String;
    :cond_111
    move-object v3, v11

    .end local v11    # "profile_source":Ljava/lang/String;
    .restart local v3    # "profile_source":Ljava/lang/String;
    goto :goto_96
.end method

.method private initialLayout()V
    .registers 38

    .prologue
    .line 612
    const v35, 0x7f390004

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    .line 613
    const v35, 0x7f390007

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 614
    .local v32, "tvPersonal":Landroid/widget/TextView;
    const v35, 0x7f39000a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 615
    .local v22, "tvFirstname":Landroid/widget/TextView;
    const v35, 0x7f390009

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 616
    .local v23, "tvFirstname0":Landroid/widget/TextView;
    const v35, 0x7f39000d

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 617
    .local v26, "tvLastname":Landroid/widget/TextView;
    const v35, 0x7f39000c

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 618
    .local v27, "tvLastname0":Landroid/widget/TextView;
    const v35, 0x7f390010

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 619
    .local v33, "tvSex":Landroid/widget/TextView;
    const v35, 0x7f39000f

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 620
    .local v34, "tvSex0":Landroid/widget/TextView;
    const v35, 0x7f390013

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 621
    .local v16, "tvBirthday":Landroid/widget/TextView;
    const v35, 0x7f390012

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 622
    .local v17, "tvBirthday0":Landroid/widget/TextView;
    const v35, 0x7f390014

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 623
    .local v18, "tvContact":Landroid/widget/TextView;
    const v35, 0x7f390017

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 624
    .local v29, "tvMobile":Landroid/widget/TextView;
    const v35, 0x7f390016

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 625
    .local v30, "tvMobile0":Landroid/widget/TextView;
    const v35, 0x7f39001a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 626
    .local v20, "tvEmail":Landroid/widget/TextView;
    const v35, 0x7f390019

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 627
    .local v21, "tvEmail0":Landroid/widget/TextView;
    const v35, 0x7f39001c

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 628
    .local v14, "tvAddress":Landroid/widget/TextView;
    const v35, 0x7f39001b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 629
    .local v15, "tvAddress0":Landroid/widget/TextView;
    const v35, 0x7f39001d

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 630
    .local v31, "tvNotification0":Landroid/widget/TextView;
    const v35, 0x7f39001f

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 631
    .local v25, "tvLanguage0":Landroid/widget/TextView;
    const v35, 0x7f390021

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 632
    .local v19, "tvDisplayLanguage":Landroid/widget/TextView;
    const v35, 0x7f390006

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 636
    .local v28, "tvLogoProfileSettingWith":Landroid/widget/TextView;
    const v35, 0x7f39001e

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ToggleButton;

    .line 637
    .local v13, "toggleNotificationButton":Landroid/widget/ToggleButton;
    const v35, 0x7f390023

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 641
    .local v4, "btUpdate":Landroid/widget/Button;
    :try_start_131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setTextSize(F)V

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/ToggleButton;->setTextSize(F)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextSize(F)V
    :try_end_3a1
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_3a1} :catch_702

    .line 695
    :goto_3a1
    const v35, 0x7f390028

    :try_start_3a4
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 696
    .local v24, "tvHeaderCaption":Landroid/widget/TextView;
    if-eqz v24, :cond_3cc

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v35

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3cc
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3cc} :catch_6ff

    .line 705
    .end local v24    # "tvHeaderCaption":Landroid/widget/TextView;
    :cond_3cc
    :goto_3cc
    const v35, 0x7f390024

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ProgressBar;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    .line 706
    const v35, 0x7f390003

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ImageView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    .line 707
    const v35, 0x7f39000a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/EditText;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    .line 708
    const v35, 0x7f39000d

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/EditText;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    .line 709
    const v35, 0x7f390010

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/EditText;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    .line 710
    const v35, 0x7f390013

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/EditText;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    .line 711
    const v35, 0x7f390017

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/EditText;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    .line 712
    const v35, 0x7f39001a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/EditText;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    .line 713
    const v35, 0x7f39001c

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/EditText;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    .line 715
    const v35, 0x7f39001e

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ToggleButton;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    .line 716
    const v35, 0x7f390020

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->LayoutSelectLanguage:Landroid/widget/LinearLayout;

    .line 717
    const v35, 0x7f390021

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    .line 718
    const v35, 0x7f390022

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ImageView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;

    .line 721
    const v35, 0x7f390005

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ImageView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgLogoProfileSettingWith:Landroid/widget/ImageView;

    .line 722
    const v35, 0x7f390006

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    .line 725
    const v35, 0x7f390008

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 726
    .local v5, "gImgLockKey1":Landroid/widget/ImageView;
    const v35, 0x7f39000b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 727
    .local v6, "gImgLockKey2":Landroid/widget/ImageView;
    const v35, 0x7f39000e

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 728
    .local v7, "gImgLockKey3":Landroid/widget/ImageView;
    const v35, 0x7f390011

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 729
    .local v8, "gImgLockKey4":Landroid/widget/ImageView;
    const v35, 0x7f390015

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 730
    .local v9, "gImgLockKey5":Landroid/widget/ImageView;
    const v35, 0x7f390018

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 732
    .local v10, "gImgLockKey6":Landroid/widget/ImageView;
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v11, v0, [Ljava/lang/String;

    const/16 v35, 0x0

    const-string v36, "Female"

    aput-object v36, v11, v35

    const/16 v35, 0x1

    const-string v36, "Male"

    aput-object v36, v11, v35

    .line 733
    .local v11, "itemsGender":[Ljava/lang/String;
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    const v36, 0x1090009

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v2, v0, v1, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 736
    .local v2, "adapterGender":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "2"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_674

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    new-instance v36, Lcom/samsung/privilege/activity/ProfileSettingActivity$4;

    invoke-direct/range {v36 .. v37}, Lcom/samsung/privilege/activity/ProfileSettingActivity$4;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    move-object/from16 v35, v0

    new-instance v36, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v11}, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->SelectDateStart:Landroid/view/View$OnTouchListener;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 761
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 762
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 765
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    const v35, 0x7f020306

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v5, v0, v1}, Lcom/samsung/privilege/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 769
    const v35, 0x7f020306

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v6, v0, v1}, Lcom/samsung/privilege/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 770
    const v35, 0x7f020306

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v7, v0, v1}, Lcom/samsung/privilege/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 787
    :cond_618
    :goto_618
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_6f2

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 793
    :goto_62d
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v12, v0, [Ljava/lang/String;

    const/16 v35, 0x0

    const v36, 0x7f0a00c3

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v12, v35

    const/16 v35, 0x1

    const v36, 0x7f0a00c4

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v12, v35

    .line 794
    .local v12, "itemsLanguage":[Ljava/lang/String;
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    const v36, 0x1090009

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v3, v0, v1, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 796
    .local v3, "adapterLanguage":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->LayoutSelectLanguage:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    new-instance v36, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    return-void

    .line 771
    .end local v3    # "adapterLanguage":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v12    # "itemsLanguage":[Ljava/lang/String;
    :cond_674
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_618

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 778
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 779
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 783
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_618

    .line 790
    :cond_6f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_62d

    .line 700
    .end local v2    # "adapterGender":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5    # "gImgLockKey1":Landroid/widget/ImageView;
    .end local v6    # "gImgLockKey2":Landroid/widget/ImageView;
    .end local v7    # "gImgLockKey3":Landroid/widget/ImageView;
    .end local v8    # "gImgLockKey4":Landroid/widget/ImageView;
    .end local v9    # "gImgLockKey5":Landroid/widget/ImageView;
    .end local v10    # "gImgLockKey6":Landroid/widget/ImageView;
    .end local v11    # "itemsGender":[Ljava/lang/String;
    :catch_6ff
    move-exception v35

    goto/16 :goto_3cc

    .line 689
    :catch_702
    move-exception v35

    goto/16 :goto_3a1
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 426
    const-string v2, "profile.setting"

    const-string v3, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v2, "onSaveInstanceState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 429
    const-string v2, "gObjCameraData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/CameraData;

    .line 431
    .local v1, "retain":Lcom/samsung/privilege/CameraData;
    if-nez v1, :cond_25

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    if-nez v2, :cond_25

    .line 432
    new-instance v2, Lcom/samsung/privilege/CameraData;

    invoke-direct {v2}, Lcom/samsung/privilege/CameraData;-><init>()V

    iput-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    .line 445
    .end local v1    # "retain":Lcom/samsung/privilege/CameraData;
    :cond_24
    :goto_24
    return-void

    .line 434
    .restart local v1    # "retain":Lcom/samsung/privilege/CameraData;
    :cond_25
    iput-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    .line 436
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v2, v2, Lcom/samsung/privilege/CameraData;->gPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_24

    .line 438
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 439
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v0, v2, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_24
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/ProfileSettingActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity$7;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1084
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->finish()V

    .line 820
    return-void
.end method

.method public doGoToUpdate(Landroid/view/View;)V
    .registers 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 824
    new-instance v3, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 825
    .local v3, "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    invoke-virtual {v3}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->isConnectingToInternet()Z

    move-result v12

    if-nez v12, :cond_26

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    if-eqz v12, :cond_25

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a00c1

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 985
    :cond_25
    :goto_25
    return-void

    .line 832
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_4b

    .line 833
    const v12, 0x7f0a00cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_25

    .line 835
    :cond_4b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_70

    .line 836
    const v12, 0x7f0a00cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_25

    .line 840
    :cond_70
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 841
    const-string v12, "profile.setting"

    const-string v13, "(doGoToUpdate):gPbLoadingProfile.setVisibility(View.VISIBLE);"

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v8, 0x0

    .line 844
    .local v8, "isCanUpdate":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35a

    .line 845
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_340

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_340

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_340

    .line 846
    const/4 v8, 0x1

    .line 863
    :goto_cd
    if-eqz v8, :cond_25

    .line 864
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "api/profile/me/user?token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 865
    .local v11, "url":Ljava/lang/String;
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "url= "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    new-instance v10, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v10}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 868
    .local v10, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3ed

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/UserLogin;->GetIsFacebookUser(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_3ed

    .line 872
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-eqz v12, :cond_165

    .line 873
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v12, v12, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_165

    .line 875
    :try_start_131
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 876
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v12, v12, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v12, v13, v14, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 877
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 878
    .local v1, "bitmapdata":[B
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "bitmapdata "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v12, "data"

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_165} :catch_3b9

    .line 886
    .end local v1    # "bitmapdata":[B
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_165
    :goto_165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "female"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3bf

    .line 887
    const-string v12, "gender"

    const-string v13, "female"

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v12, "profile.setting"

    const-string v13, "gender female"

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_18b
    :goto_18b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1ef

    .line 908
    :try_start_19f
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v12, "dd/MM/yyyy"

    invoke-direct {v7, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 909
    .local v7, "formatter":Ljava/text/SimpleDateFormat;
    const-string v12, "UTC"

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 911
    .local v5, "date":Ljava/util/Date;
    const-string v12, "birthdate"

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "birthdate "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ef
    .catch Ljava/text/ParseException; {:try_start_19f .. :try_end_1ef} :catch_3e7

    .line 918
    .end local v5    # "date":Ljava/util/Date;
    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_1ef
    :goto_1ef
    const-string v12, "email"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "email "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v12, "ShippingFirstName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "firstname "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v12, "ShippingLastName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lastname "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 930
    .local v4, "contact_number":Ljava/lang/String;
    if-eqz v4, :cond_298

    const-string v12, ""

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29a

    .line 933
    :cond_298
    const-string v4, "+0000000000"

    .line 935
    :cond_29a
    const-string v12, "contact_number"

    invoke-virtual {v10, v12, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "contact_number "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :goto_2b3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    if-eqz v12, :cond_482

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_482

    .line 954
    const-string v12, "address"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "address "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    invoke-virtual {v12}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/samsung/privilege/UserLogin;->SetIsNotificationOn(Landroid/content/Context;Z)Z

    move-result v13

    if-eq v12, v13, :cond_329

    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    invoke-virtual {v13}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/UserLogin;->SetIsNotificationOn(Landroid/content/Context;Z)Z

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4a3

    .line 975
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/util/BBUtil;->registerGCM(Landroid/content/Context;)V

    .line 981
    :cond_329
    :goto_329
    new-instance v9, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v9}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 982
    .local v9, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v12, 0x1d4c0

    invoke-virtual {v9, v12}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 983
    new-instance v12, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    invoke-virtual {v9, v11, v10, v12}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_25

    .line 848
    .end local v4    # "contact_number":Ljava/lang/String;
    .end local v9    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v10    # "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    .end local v11    # "url":Ljava/lang/String;
    :cond_340
    const/4 v8, 0x0

    .line 849
    const v12, 0x7f0a02e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_cd

    .line 854
    :cond_35a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-nez v12, :cond_39c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_39f

    .line 855
    :cond_39c
    const/4 v8, 0x1

    .line 856
    goto/16 :goto_cd

    .line 857
    :cond_39f
    const/4 v8, 0x0

    .line 858
    const v12, 0x7f0a00e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_cd

    .line 880
    .restart local v10    # "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    .restart local v11    # "url":Ljava/lang/String;
    :catch_3b9
    move-exception v6

    .line 881
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_165

    .line 889
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3bf
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "male"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18b

    .line 890
    const-string v12, "gender"

    const-string v13, "male"

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v12, "profile.setting"

    const-string v13, "gender male"

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18b

    .line 913
    :catch_3e7
    move-exception v6

    .line 914
    .local v6, "e":Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1ef

    .line 938
    .end local v6    # "e":Ljava/text/ParseException;
    :cond_3ed
    const-string v12, "ShippingFirstName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "firstname "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v12, "ShippingLastName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lastname "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 944
    .restart local v4    # "contact_number":Ljava/lang/String;
    if-eqz v4, :cond_465

    const-string v12, ""

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_467

    .line 947
    :cond_465
    const-string v4, "+0000000000"

    .line 949
    :cond_467
    const-string v12, "contact_number"

    invoke-virtual {v10, v12, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "contact_number "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b3

    .line 957
    :cond_482
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    if-eqz v12, :cond_498

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a00ce

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 960
    :cond_498
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_25

    .line 977
    :cond_4a3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/util/BBUtil;->unRegisterGCM(Landroid/content/Context;)V

    goto/16 :goto_329
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 239
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 240
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 241
    if-ne p2, v1, :cond_54

    if-ne p1, v4, :cond_54

    .line 242
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 243
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    .line 244
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v1, v1, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 245
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    aget-object v0, v2, v10

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 247
    .local v7, "columnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 248
    .local v9, "filePath":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 250
    invoke-static {v9}, Lcom/samsung/privilege/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 252
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-nez v6, :cond_4a

    .line 253
    const-string v0, "You can not select this picture, try to select another picture."

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 273
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "columnIndex":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 255
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "columnIndex":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "filePath":Ljava/lang/String;
    :cond_4a
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v6, v0, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 256
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_49

    .line 259
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "columnIndex":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_54
    if-ne p2, v1, :cond_49

    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    .line 261
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v0, v0, Lcom/samsung/privilege/CameraData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/privilege/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 262
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6e

    .line 263
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v6, v0, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 264
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    const/4 v6, 0x0

    .line 266
    goto :goto_49

    .line 267
    :cond_6e
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v3, v0, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_49
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_a2

    :cond_a
    :goto_a
    move v2, v3

    .line 335
    :goto_b
    return v2

    .line 289
    :pswitch_c
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-boolean v2, v4, Lcom/samsung/privilege/CameraData;->gIsModeTakePhoto:Z

    .line 292
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "Select Picture"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 299
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_29
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-boolean v3, v4, Lcom/samsung/privilege/CameraData;->gIsModeTakePhoto:Z

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    .line 304
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 306
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    iput-object v4, v2, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 307
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    sget-object v4, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    iput-object v4, v2, Lcom/samsung/privilege/CameraData;->gMediaFile:Ljava/io/File;

    .line 308
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    sget-object v4, Lcom/samsung/privilege/activity/ProfileSettingActivity;->path:Ljava/lang/String;

    iput-object v4, v2, Lcom/samsung/privilege/CameraData;->gPath:Ljava/lang/String;

    .line 310
    const-string v2, "output"

    sget-object v4, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 314
    :cond_6a
    const-string v3, "Please check your memory card."

    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_b

    .line 320
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_70
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    if-eqz v2, :cond_a

    .line 321
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v2, v2, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_85

    .line 322
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v2, v2, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 323
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v5, v2, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 325
    :cond_85
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v2, v2, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v2, :cond_8f

    .line 326
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v5, v2, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 328
    :cond_8f
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 329
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    const v4, 0x7f02039f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 287
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_29
        :pswitch_70
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    if-eqz p1, :cond_103

    .line 130
    const-string v9, "profile.setting"

    const-string v10, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_c
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 139
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a001d

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x3e800000

    invoke-virtual {v0, v9, v10}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 141
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 143
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gScreenHeight:I

    .line 144
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gScreenWidth:I

    .line 146
    iget v8, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gScreenWidth:I

    .line 147
    .local v8, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gScreenHeight:I

    .line 149
    .local v2, "height":I
    if-le v2, v8, :cond_10c

    .end local v2    # "height":I
    :goto_53
    div-int/lit8 v5, v2, 0x2

    .line 150
    .local v5, "longest":I
    new-instance v9, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 151
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v10, 0x7f02039f

    invoke-virtual {v9, v10}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 152
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 153
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 156
    const v9, 0x7f03010d

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->setContentView(I)V

    .line 158
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;

    .line 159
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    .line 161
    const v9, 0x7f070031

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 162
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "768830479847872"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 163
    const v9, 0x7f0202b6

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :goto_bc
    const v9, 0x7f390027

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 173
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_145

    .line 174
    const v9, 0x7f0202ba

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :goto_d5
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->initialLayout()V

    .line 180
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfilePicture()V

    .line 181
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfileData()V

    .line 183
    if-nez p1, :cond_14c

    .line 184
    new-instance v9, Lcom/samsung/privilege/CameraData;

    invoke-direct {v9}, Lcom/samsung/privilege/CameraData;-><init>()V

    iput-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    .line 189
    :goto_e7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 191
    const v9, 0x7f390028

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 192
    .local v7, "tvHeaderCaption":Landroid/widget/TextView;
    new-instance v9, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    .line 201
    const-wide/16 v10, 0x3e8

    .line 192
    invoke-virtual {v7, v9, v10, v11}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    return-void

    .line 132
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imgFlag":Landroid/widget/ImageView;
    .end local v4    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "longest":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "tvHeaderCaption":Landroid/widget/TextView;
    .end local v8    # "width":I
    :cond_103
    const-string v9, "profile.setting"

    const-string v10, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "width":I
    :cond_10c
    move v2, v8

    .line 149
    goto/16 :goto_53

    .line 164
    .end local v2    # "height":I
    .restart local v3    # "imgFlag":Landroid/widget/ImageView;
    .restart local v5    # "longest":I
    :cond_10f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1525635597652592"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_126

    .line 165
    const v9, 0x7f0202b5

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_bc

    .line 166
    :cond_126
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "517155661760483"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13d

    .line 167
    const v9, 0x7f0202b7

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_bc

    .line 169
    :cond_13d
    const v9, 0x7f0202b8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_bc

    .line 176
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_145
    const v9, 0x7f0202b9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 186
    :cond_14c
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_e7
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

    .line 382
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 383
    const-string v0, "Post photo on profile"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 384
    const-string v0, "Choose From Gallery"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 385
    const-string v0, "Take Photo"

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 387
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v0, v0, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 388
    const-string v0, "Delete Photo"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 392
    :goto_24
    return-void

    .line 390
    :cond_25
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_24
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .param p1, "id"    # I

    .prologue
    .line 277
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 278
    .local v6, "date":Ljava/util/Date;
    packed-switch p1, :pswitch_data_22

    .line 282
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 280
    :pswitch_a
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v3, v1, 0x76c

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_9

    .line 278
    nop

    :pswitch_data_22
    .packed-switch 0xa
        :pswitch_a
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 234
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 235
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 218
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 223
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 224
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 226
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 422
    const-string v0, "profile.setting"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 206
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 414
    const-string v0, "profile.setting"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    return-void
.end method
