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

.field private gTvBirthday:Landroid/widget/TextView;

.field private gTvDisplayLanguage:Landroid/widget/TextView;

.field private gTvEmail:Landroid/widget/EditText;

.field private gTvFirstName:Landroid/widget/EditText;

.field private gTvLastName:Landroid/widget/EditText;

.field private gTvLogoProfileSettingWith:Landroid/widget/TextView;

.field private gTvMobile:Landroid/widget/EditText;

.field private gTvSex:Landroid/widget/TextView;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private tvFullName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 77
    const-string v0, "profile.setting"

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->LOGCAT:Ljava/lang/String;

    .line 79
    const-string v0, "GalaxyGift"

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->FOLDER_IMAGE:Ljava/lang/String;

    .line 80
    const-string v0, "+0000000000"

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->MOBILE_DEFAULT:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->MENU_BrowseImage:I

    .line 91
    iput v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->MENU_TakePhoto:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->MENU_DeletePhoto:I

    .line 97
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gIsSelectStartDateTime:Z

    .line 396
    new-instance v0, Lcom/samsung/privilege/activity/ProfileSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$1;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->SelectDateStart:Landroid/view/View$OnTouchListener;

    .line 405
    new-instance v0, Lcom/samsung/privilege/activity/ProfileSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$2;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 76
    return-void
.end method

.method private ProcessJsonProfileAndGenUI(Ljava/lang/String;)V
    .registers 16
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 520
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 525
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

    .line 526
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    const-string v10, "ShippingFirstName"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    const-string v10, "ShippingLastName"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 529
    const-string v9, "Gender"

    invoke-static {v6, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 530
    .local v7, "strGender":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_79

    .line 531
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

    if-eqz v9, :cond_13a

    .line 532
    :cond_6d
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    const v10, 0x7f0902e8

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :cond_79
    :goto_79
    const-string v9, "BirthDate"

    invoke-static {v6, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
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

    .line 540
    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c3

    .line 542
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 543
    .local v2, "date":Ljava/lang/Long;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 545
    .local v3, "dateObj":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v9, "dd/MM/yyyy"

    invoke-direct {v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 546
    .local v4, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 547
    .local v8, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    .end local v2    # "date":Ljava/lang/Long;
    .end local v3    # "dateObj":Ljava/util/Date;
    .end local v4    # "df":Ljava/text/SimpleDateFormat;
    .end local v8    # "text":Ljava/lang/String;
    :cond_c3
    const-string v9, "Contact_Number"

    invoke-static {v6, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "Contact_Number":Ljava/lang/String;
    if-eqz v0, :cond_186

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_186

    .line 574
    const-string v9, "+0000000000"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17f

    .line 575
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :goto_e2
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    const-string v10, "Email"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    const-string v10, "Address"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 586
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Address"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 596
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18f

    .line 597
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgLogoProfileSettingWith:Landroid/widget/ImageView;

    const v10, 0x7f0202db

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    const v10, 0x7f0900e5

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080046

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    .end local v0    # "Contact_Number":Ljava/lang/String;
    .end local v1    # "birth_date":Ljava/lang/String;
    .end local v6    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "strGender":Ljava/lang/String;
    :cond_139
    :goto_139
    return-void

    .line 533
    .restart local v6    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v7    # "strGender":Ljava/lang/String;
    :cond_13a
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "M"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_156

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "male"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 534
    :cond_156
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    const v10, 0x7f0902e7

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_162} :catch_164

    goto/16 :goto_79

    .line 606
    .end local v6    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "strGender":Ljava/lang/String;
    :catch_164
    move-exception v5

    .line 607
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

    .line 608
    const-string v9, "Error while load profile data."

    invoke-direct {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_139

    .line 577
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "Contact_Number":Ljava/lang/String;
    .restart local v1    # "birth_date":Ljava/lang/String;
    .restart local v6    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v7    # "strGender":Ljava/lang/String;
    :cond_17f
    :try_start_17f
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e2

    .line 580
    :cond_186
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e2

    .line 600
    :cond_18f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_139

    .line 601
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgLogoProfileSettingWith:Landroid/widget/ImageView;

    const v10, 0x7f020335

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 602
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    const-string v10, "Device"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080041

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_1be} :catch_164

    goto/16 :goto_139
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity;Z)V
    .registers 2

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gIsSelectStartDateTime:Z

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gIsSelectStartDateTime:Z

    return v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 1

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->initialLayout()V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 1

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfilePicture()V

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 1

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfileData()V

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->ProcessJsonProfileAndGenUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1105
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    return-object v0
.end method

.method private getOutputMediaFile(I)Ljava/io/File;
    .registers 7
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 354
    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "GalaxyGift"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v0, "mediaStorageDir":Ljava/io/File;
    const-string v3, "profile.setting"

    const-string v4, "begin check mediaStorageDir.exists()"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    .line 360
    const-string v3, "profile.setting"

    const-string v4, "begin check mediaStorageDir.mkdirs()"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_30

    .line 362
    const-string v3, "profile.setting"

    const-string v4, "failed to create directory"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_2f
    :goto_2f
    return-object v2

    .line 367
    :cond_30
    const-string v3, "profile.setting"

    const-string v4, "end check mediaStorageDir.exists()"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "timeStamp":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2f

    .line 373
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

    .line 374
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

    .line 379
    sget-object v2, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    goto :goto_2f
.end method

.method private getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 343
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 345
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 347
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getProfileData()V
    .registers 5

    .prologue
    .line 476
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 478
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

    .line 479
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

    .line 480
    new-instance v1, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method private getProfilePicture()V
    .registers 14

    .prologue
    .line 451
    :try_start_0
    const-string v11, ""

    .line 452
    .local v11, "profile_source":Ljava/lang/String;
    const-string v0, "profile_source"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "catch_profile_source":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 454
    const-string v0, "profile.setting"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "catch_profile_source "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lcom/bitmapfun/util/ImageFetcher;->IMAGE_LOADING_TRANS:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 457
    :cond_33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 458
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 459
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

    .line 461
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

    .line 467
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

    .line 468
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const v6, 0x7f0203a7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 469
    const-string v0, "profile_source"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 473
    .end local v1    # "catch_profile_source":Ljava/lang/String;
    .end local v3    # "profile_source":Ljava/lang/String;
    :goto_bf
    return-void

    .line 462
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

    .line 463
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 464
    .local v8, "c":Ljava/util/Calendar;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 465
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

    .line 470
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
    .registers 44

    .prologue
    .line 614
    const v3, 0x7f390004

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    .line 615
    const v3, 0x7f390007

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 616
    .local v40, "tvPersonal":Landroid/widget/TextView;
    const v3, 0x7f39000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 617
    .local v30, "tvFirstname":Landroid/widget/TextView;
    const v3, 0x7f390009

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 618
    .local v31, "tvFirstname0":Landroid/widget/TextView;
    const v3, 0x7f39000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 619
    .local v34, "tvLastname":Landroid/widget/TextView;
    const v3, 0x7f39000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 620
    .local v35, "tvLastname0":Landroid/widget/TextView;
    const v3, 0x7f390010

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 621
    .local v41, "tvSex":Landroid/widget/TextView;
    const v3, 0x7f39000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 622
    .local v42, "tvSex0":Landroid/widget/TextView;
    const v3, 0x7f390013

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 623
    .local v24, "tvBirthday":Landroid/widget/TextView;
    const v3, 0x7f390012

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 624
    .local v25, "tvBirthday0":Landroid/widget/TextView;
    const v3, 0x7f390014

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 625
    .local v26, "tvContact":Landroid/widget/TextView;
    const v3, 0x7f390017

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 626
    .local v37, "tvMobile":Landroid/widget/TextView;
    const v3, 0x7f390016

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 627
    .local v38, "tvMobile0":Landroid/widget/TextView;
    const v3, 0x7f39001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 628
    .local v28, "tvEmail":Landroid/widget/TextView;
    const v3, 0x7f390019

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 629
    .local v29, "tvEmail0":Landroid/widget/TextView;
    const v3, 0x7f39001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 630
    .local v22, "tvAddress":Landroid/widget/TextView;
    const v3, 0x7f39001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 631
    .local v23, "tvAddress0":Landroid/widget/TextView;
    const v3, 0x7f39001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 632
    .local v39, "tvNotification0":Landroid/widget/TextView;
    const v3, 0x7f39001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 633
    .local v33, "tvLanguage0":Landroid/widget/TextView;
    const v3, 0x7f390021

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 634
    .local v27, "tvDisplayLanguage":Landroid/widget/TextView;
    const v3, 0x7f390006

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 638
    .local v36, "tvLogoProfileSettingWith":Landroid/widget/TextView;
    const v3, 0x7f39001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ToggleButton;

    .line 639
    .local v21, "toggleNotificationButton":Landroid/widget/ToggleButton;
    const v3, 0x7f390023

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 643
    .local v10, "btUpdate":Landroid/widget/Button;
    :try_start_101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setTextSize(F)V

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setTextSize(F)V
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_2fb} :catch_5f7

    .line 697
    :goto_2fb
    const v3, 0x7f390028

    :try_start_2fe
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 698
    .local v32, "tvHeaderCaption":Landroid/widget/TextView;
    if-eqz v32, :cond_31e

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_31e
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_31e} :catch_5f4

    .line 707
    .end local v32    # "tvHeaderCaption":Landroid/widget/TextView;
    :cond_31e
    :goto_31e
    const v3, 0x7f390024

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    .line 708
    const v3, 0x7f390003

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    .line 709
    const v3, 0x7f39000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    .line 710
    const v3, 0x7f39000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    .line 711
    const v3, 0x7f390010

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    .line 712
    const v3, 0x7f390013

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/TextView;

    .line 713
    const v3, 0x7f390017

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    .line 714
    const v3, 0x7f39001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    .line 715
    const v3, 0x7f39001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    .line 717
    const v3, 0x7f39001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    .line 718
    const v3, 0x7f390020

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->LayoutSelectLanguage:Landroid/widget/LinearLayout;

    .line 719
    const v3, 0x7f390021

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    .line 720
    const v3, 0x7f390022

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;

    .line 723
    const v3, 0x7f390005

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgLogoProfileSettingWith:Landroid/widget/ImageView;

    .line 724
    const v3, 0x7f390006

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    .line 727
    const v3, 0x7f390008

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 728
    .local v12, "gImgLockKey1":Landroid/widget/ImageView;
    const v3, 0x7f39000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 729
    .local v13, "gImgLockKey2":Landroid/widget/ImageView;
    const v3, 0x7f39000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 730
    .local v14, "gImgLockKey3":Landroid/widget/ImageView;
    const v3, 0x7f390011

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 731
    .local v15, "gImgLockKey4":Landroid/widget/ImageView;
    const v3, 0x7f390015

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 732
    .local v16, "gImgLockKey5":Landroid/widget/ImageView;
    const v3, 0x7f390018

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 734
    .local v17, "gImgLockKey6":Landroid/widget/ImageView;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    const v4, 0x7f0902e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v3

    const/4 v3, 0x1

    const v4, 0x7f0902e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v3

    .line 735
    .local v18, "itemsGender":[Ljava/lang/String;
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090009

    move-object/from16 v0, v18

    invoke-direct {v8, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 738
    .local v8, "adapterGender":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_589

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    new-instance v4, Lcom/samsung/privilege/activity/ProfileSettingActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$4;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    new-instance v4, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v8, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    .line 773
    .local v20, "newCalendar":Ljava/util/Calendar;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v11, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 774
    .local v11, "dateFormatter":Ljava/text/SimpleDateFormat;
    new-instance v2, Landroid/app/DatePickerDialog;

    new-instance v4, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/text/SimpleDateFormat;)V

    .line 780
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v3, p0

    .line 774
    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 781
    .local v2, "datePickerDialogPurchase":Landroid/app/DatePickerDialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/TextView;

    new-instance v4, Lcom/samsung/privilege/activity/ProfileSettingActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity$7;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Landroid/app/DatePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 790
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 797
    const v3, 0x7f020308

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v12, v3, v4}, Lcom/samsung/privilege/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 798
    const v3, 0x7f020308

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v13, v3, v4}, Lcom/samsung/privilege/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 799
    const v3, 0x7f020308

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v14, v3, v4}, Lcom/samsung/privilege/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 816
    .end local v2    # "datePickerDialogPurchase":Landroid/app/DatePickerDialog;
    .end local v11    # "dateFormatter":Ljava/text/SimpleDateFormat;
    .end local v20    # "newCalendar":Ljava/util/Calendar;
    :cond_53b
    :goto_53b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5ea

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 822
    :goto_54d
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const v4, 0x7f0900c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const v4, 0x7f0900c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v3

    .line 823
    .local v19, "itemsLanguage":[Ljava/lang/String;
    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090009

    move-object/from16 v0, v19

    invoke-direct {v9, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 825
    .local v9, "adapterLanguage":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->LayoutSelectLanguage:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v9, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity$8;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    return-void

    .line 800
    .end local v9    # "adapterLanguage":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v19    # "itemsLanguage":[Ljava/lang/String;
    :cond_589
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53b

    .line 801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 807
    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    const/16 v3, 0x8

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 810
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 811
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 812
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_53b

    .line 819
    :cond_5ea
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_54d

    .line 702
    .end local v8    # "adapterGender":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v12    # "gImgLockKey1":Landroid/widget/ImageView;
    .end local v13    # "gImgLockKey2":Landroid/widget/ImageView;
    .end local v14    # "gImgLockKey3":Landroid/widget/ImageView;
    .end local v15    # "gImgLockKey4":Landroid/widget/ImageView;
    .end local v16    # "gImgLockKey5":Landroid/widget/ImageView;
    .end local v17    # "gImgLockKey6":Landroid/widget/ImageView;
    .end local v18    # "itemsGender":[Ljava/lang/String;
    :catch_5f4
    move-exception v3

    goto/16 :goto_31e

    .line 691
    :catch_5f7
    move-exception v3

    goto/16 :goto_2fb
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 428
    const-string v2, "profile.setting"

    const-string v3, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v2, "onSaveInstanceState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 431
    const-string v2, "gObjCameraData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/CameraData;

    .line 433
    .local v1, "retain":Lcom/samsung/privilege/CameraData;
    if-nez v1, :cond_25

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    if-nez v2, :cond_25

    .line 434
    new-instance v2, Lcom/samsung/privilege/CameraData;

    invoke-direct {v2}, Lcom/samsung/privilege/CameraData;-><init>()V

    iput-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    .line 447
    .end local v1    # "retain":Lcom/samsung/privilege/CameraData;
    :cond_24
    :goto_24
    return-void

    .line 436
    .restart local v1    # "retain":Lcom/samsung/privilege/CameraData;
    :cond_25
    iput-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    .line 438
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v2, v2, Lcom/samsung/privilege/CameraData;->gPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 439
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_24

    .line 440
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v0, v2, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_24
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/ProfileSettingActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity$9;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1113
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->finish()V

    .line 849
    return-void
.end method

.method public doGoToUpdate(Landroid/view/View;)V
    .registers 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 853
    new-instance v4, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v4, v13}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 854
    .local v4, "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    invoke-virtual {v4}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->isConnectingToInternet()Z

    move-result v13

    if-nez v13, :cond_26

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_25

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0900c1

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 1014
    :cond_25
    :goto_25
    return-void

    .line 861
    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_4b

    .line 862
    const v13, 0x7f0900cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_25

    .line 864
    :cond_4b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_70

    .line 865
    const v13, 0x7f0900cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_25

    .line 869
    :cond_70
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 870
    const-string v13, "profile.setting"

    const-string v14, "(doGoToUpdate):gPbLoadingProfile.setVisibility(View.VISIBLE);"

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/4 v9, 0x0

    .line 873
    .local v9, "isCanUpdate":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "2"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35e

    .line 874
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_344

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_344

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_344

    .line 875
    const/4 v9, 0x1

    .line 892
    :goto_cd
    if-eqz v9, :cond_25

    .line 893
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "api/profile/me/user?token="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 894
    .local v12, "url":Ljava/lang/String;
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "url= "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    new-instance v11, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v11}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 897
    .local v11, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "2"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/privilege/UserLogin;->GetIsFacebookUser(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_3f4

    .line 901
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-eqz v13, :cond_165

    .line 902
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v13, v13, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_165

    .line 904
    :try_start_131
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 905
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v13, v13, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v13, v14, v15, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 906
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 907
    .local v2, "bitmapdata":[B
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "bitmapdata "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v13, "data"

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_165} :catch_3bd

    .line 915
    .end local v2    # "bitmapdata":[B
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_165
    :goto_165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0902e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c3

    .line 916
    const-string v13, "gender"

    const-string v14, "female"

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v13, "profile.setting"

    const-string v14, "gender female"

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_18e
    :goto_18e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f3

    .line 937
    :try_start_1a2
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v13, "dd/MM/yyyy"

    invoke-direct {v8, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 938
    .local v8, "formatter":Ljava/text/SimpleDateFormat;
    const-string v13, "UTC"

    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 940
    .local v6, "date":Ljava/util/Date;
    const-string v13, "birthdate"

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "birthdate "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f3
    .catch Ljava/text/ParseException; {:try_start_1a2 .. :try_end_1f3} :catch_3ee

    .line 947
    .end local v6    # "date":Ljava/util/Date;
    .end local v8    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_1f3
    :goto_1f3
    const-string v13, "email"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "email "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v13, "ShippingFirstName"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "firstname "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v13, "ShippingLastName"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "lastname "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 959
    .local v5, "contact_number":Ljava/lang/String;
    if-eqz v5, :cond_29c

    const-string v13, ""

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29e

    .line 962
    :cond_29c
    const-string v5, "+0000000000"

    .line 964
    :cond_29e
    const-string v13, "contact_number"

    invoke-virtual {v11, v13, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "contact_number "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :goto_2b7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    if-eqz v13, :cond_489

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_489

    .line 983
    const-string v13, "address"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "address "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    invoke-virtual {v13}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/privilege/UserLogin;->SetIsNotificationOn(Landroid/content/Context;Z)Z

    move-result v14

    if-eq v13, v14, :cond_32d

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    invoke-virtual {v14}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/UserLogin;->SetIsNotificationOn(Landroid/content/Context;Z)Z

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4aa

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/privilege/util/BBUtil;->registerGCM(Landroid/content/Context;)V

    .line 1010
    :cond_32d
    :goto_32d
    new-instance v10, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v10}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1011
    .local v10, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v13, 0x1d4c0

    invoke-virtual {v10, v13}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 1012
    new-instance v13, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    invoke-virtual {v10, v12, v11, v13}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_25

    .line 877
    .end local v5    # "contact_number":Ljava/lang/String;
    .end local v10    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v11    # "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    .end local v12    # "url":Ljava/lang/String;
    :cond_344
    const/4 v9, 0x0

    .line 878
    const v13, 0x7f0902e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_cd

    .line 883
    :cond_35e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-nez v13, :cond_3a0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3a3

    .line 884
    :cond_3a0
    const/4 v9, 0x1

    .line 885
    goto/16 :goto_cd

    .line 886
    :cond_3a3
    const/4 v9, 0x0

    .line 887
    const v13, 0x7f0900e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_cd

    .line 909
    .restart local v11    # "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    .restart local v12    # "url":Ljava/lang/String;
    :catch_3bd
    move-exception v7

    .line 910
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_165

    .line 918
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3c3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0902e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18e

    .line 919
    const-string v13, "gender"

    const-string v14, "male"

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v13, "profile.setting"

    const-string v14, "gender male"

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18e

    .line 942
    :catch_3ee
    move-exception v7

    .line 943
    .local v7, "e":Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1f3

    .line 967
    .end local v7    # "e":Ljava/text/ParseException;
    :cond_3f4
    const-string v13, "ShippingFirstName"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "firstname "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v13, "ShippingLastName"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "lastname "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 973
    .restart local v5    # "contact_number":Ljava/lang/String;
    if-eqz v5, :cond_46c

    const-string v13, ""

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_46e

    .line 976
    :cond_46c
    const-string v5, "+0000000000"

    .line 978
    :cond_46e
    const-string v13, "contact_number"

    invoke-virtual {v11, v13, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v13, "profile.setting"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "contact_number "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b7

    .line 986
    :cond_489
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_49f

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0900ce

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 989
    :cond_49f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_25

    .line 1006
    :cond_4aa
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/privilege/util/BBUtil;->unRegisterGCM(Landroid/content/Context;)V

    goto/16 :goto_32d
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

    .line 241
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 243
    if-ne p2, v1, :cond_54

    if-ne p1, v4, :cond_54

    .line 244
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 245
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    .line 246
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v1, v1, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 247
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 248
    aget-object v0, v2, v10

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 249
    .local v7, "columnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, "filePath":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 252
    invoke-static {v9}, Lcom/samsung/privilege/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 254
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-nez v6, :cond_4a

    .line 255
    const-string v0, "You can not select this picture, try to select another picture."

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 275
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "columnIndex":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 257
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "columnIndex":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "filePath":Ljava/lang/String;
    :cond_4a
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v6, v0, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 258
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_49

    .line 261
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "columnIndex":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_54
    if-ne p2, v1, :cond_49

    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    .line 263
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v0, v0, Lcom/samsung/privilege/CameraData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/privilege/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 264
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6e

    .line 265
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v6, v0, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 266
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    const/4 v6, 0x0

    .line 268
    goto :goto_49

    .line 269
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

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_a2

    :cond_a
    :goto_a
    move v2, v3

    .line 337
    :goto_b
    return v2

    .line 291
    :pswitch_c
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-boolean v2, v4, Lcom/samsung/privilege/CameraData;->gIsModeTakePhoto:Z

    .line 294
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v2, "Select Picture"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 301
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_29
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-boolean v3, v4, Lcom/samsung/privilege/CameraData;->gIsModeTakePhoto:Z

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    .line 306
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 308
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    iput-object v4, v2, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 309
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    sget-object v4, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    iput-object v4, v2, Lcom/samsung/privilege/CameraData;->gMediaFile:Ljava/io/File;

    .line 310
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    sget-object v4, Lcom/samsung/privilege/activity/ProfileSettingActivity;->path:Ljava/lang/String;

    iput-object v4, v2, Lcom/samsung/privilege/CameraData;->gPath:Ljava/lang/String;

    .line 312
    const-string v2, "output"

    sget-object v4, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 314
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 316
    :cond_6a
    const-string v3, "Please check your memory card."

    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_b

    .line 322
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_70
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    if-eqz v2, :cond_a

    .line 323
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v2, v2, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_85

    .line 324
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v2, v2, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v5, v2, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 327
    :cond_85
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v2, v2, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v2, :cond_8f

    .line 328
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iput-object v5, v2, Lcom/samsung/privilege/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 330
    :cond_8f
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 331
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    const v4, 0x7f0203a7

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 289
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
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    if-eqz p1, :cond_103

    .line 132
    const-string v9, "profile.setting"

    const-string v10, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_c
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09001d

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x3e800000

    invoke-virtual {v0, v9, v10}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 143
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gScreenHeight:I

    .line 146
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gScreenWidth:I

    .line 148
    iget v8, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gScreenWidth:I

    .line 149
    .local v8, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gScreenHeight:I

    .line 151
    .local v2, "height":I
    if-le v2, v8, :cond_10c

    .end local v2    # "height":I
    :goto_53
    div-int/lit8 v5, v2, 0x2

    .line 152
    .local v5, "longest":I
    new-instance v9, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 153
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v10, 0x7f0203a7

    invoke-virtual {v9, v10}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 154
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 155
    iget-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 158
    const v9, 0x7f03010f

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->setContentView(I)V

    .line 160
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;

    .line 161
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gFont:Landroid/graphics/Typeface;

    .line 163
    const v9, 0x7f0c0031

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 164
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "768830479847872"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 165
    const v9, 0x7f0202b8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    :goto_bc
    const v9, 0x7f390027

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 175
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_145

    .line 176
    const v9, 0x7f0202bc

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :goto_d5
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->initialLayout()V

    .line 182
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfilePicture()V

    .line 183
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfileData()V

    .line 185
    if-nez p1, :cond_14c

    .line 186
    new-instance v9, Lcom/samsung/privilege/CameraData;

    invoke-direct {v9}, Lcom/samsung/privilege/CameraData;-><init>()V

    iput-object v9, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    .line 191
    :goto_e7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 193
    const v9, 0x7f390028

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 194
    .local v7, "tvHeaderCaption":Landroid/widget/TextView;
    new-instance v9, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    .line 203
    const-wide/16 v10, 0x3e8

    .line 194
    invoke-virtual {v7, v9, v10, v11}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    return-void

    .line 134
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

    .line 151
    goto/16 :goto_53

    .line 166
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

    .line 167
    const v9, 0x7f0202b7

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_bc

    .line 168
    :cond_126
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "517155661760483"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13d

    .line 169
    const v9, 0x7f0202b9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_bc

    .line 171
    :cond_13d
    const v9, 0x7f0202ba

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_bc

    .line 178
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_145
    const v9, 0x7f0202bb

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 188
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

    .line 384
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 385
    const v0, 0x7f0902e9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 386
    const v0, 0x7f0902ea

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 387
    const v0, 0x7f0902eb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 389
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->gObjCameraData:Lcom/samsung/privilege/CameraData;

    iget-object v0, v0, Lcom/samsung/privilege/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_39

    .line 390
    const v0, 0x7f0902ec

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 394
    :goto_38
    return-void

    .line 392
    :cond_39
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_38
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .param p1, "id"    # I

    .prologue
    .line 279
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 280
    .local v6, "date":Ljava/util/Date;
    packed-switch p1, :pswitch_data_22

    .line 284
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 282
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

    .line 280
    nop

    :pswitch_data_22
    .packed-switch 0xa
        :pswitch_a
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 236
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 237
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 220
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 225
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 226
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 228
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 424
    const-string v0, "profile.setting"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 208
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 213
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 416
    const-string v0, "profile.setting"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    return-void
.end method
