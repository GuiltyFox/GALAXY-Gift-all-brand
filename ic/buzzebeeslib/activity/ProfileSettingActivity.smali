.class public Lic/buzzebeeslib/activity/ProfileSettingActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ProfileSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;,
        Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;
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
.field private final LOGCAT:Ljava/lang/String;

.field private LayoutSelectLanguage:Landroid/widget/LinearLayout;

.field private final MENU_BrowseImage:I

.field private final MENU_DeletePhoto:I

.field private final MENU_TakePhoto:I

.field private SelectDateStart:Landroid/view/View$OnTouchListener;

.field private TAG:Ljava/lang/String;

.field private fileUri:Landroid/net/Uri;

.field private gHandler:Landroid/os/Handler;

.field private gImgDisplayLanguage:Landroid/widget/ImageView;

.field private gImgLogoProfileSettingWith:Landroid/widget/ImageView;

.field private gImgProfile:Landroid/widget/ImageView;

.field private gIsSelectStartDateTime:Z

.field private gLangOld:Ljava/lang/String;

.field private gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

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

    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 77
    const-string v0, "profile.setting"

    iput-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->LOGCAT:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->MENU_BrowseImage:I

    .line 88
    iput v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->MENU_TakePhoto:I

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->MENU_DeletePhoto:I

    .line 94
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gIsSelectStartDateTime:Z

    .line 101
    const-class v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gLangOld:Ljava/lang/String;

    .line 412
    new-instance v0, Lic/buzzebeeslib/activity/ProfileSettingActivity$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$1;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->SelectDateStart:Landroid/view/View$OnTouchListener;

    .line 421
    new-instance v0, Lic/buzzebeeslib/activity/ProfileSettingActivity$2;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$2;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 76
    return-void
.end method

.method private ProcessJsonProfileAndGenUI(Ljava/lang/String;)V
    .registers 20
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 593
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 598
    .local v8, "jsonRoot":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "FirstName"

    invoke-static {v8, v15}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "LastName"

    invoke-static {v8, v15}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    const-string v14, "ShippingFirstName"

    invoke-static {v8, v14}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    const-string v14, "ShippingLastName"

    invoke-static {v8, v14}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 602
    const-string v13, "Gender"

    invoke-static {v8, v13}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 603
    .local v11, "strGender":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7e

    .line 604
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "F"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_75

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "female"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16b

    .line 605
    :cond_75
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    const-string v14, "Female"

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 611
    :cond_7e
    :goto_7e
    const-string v13, "BirthDate"

    invoke-static {v8, v13}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "birth_date":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "birth_date "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_cd

    .line 615
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 616
    .local v4, "date":Ljava/lang/Long;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 619
    .local v5, "dateObj":Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v13, "dd/MM/yyyy"

    invoke-direct {v6, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 620
    .local v6, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 621
    .local v12, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    invoke-virtual {v13, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 625
    .end local v4    # "date":Ljava/lang/Long;
    .end local v5    # "dateObj":Ljava/util/Date;
    .end local v6    # "df":Ljava/text/SimpleDateFormat;
    .end local v12    # "text":Ljava/lang/String;
    :cond_cd
    const-string v3, ""

    .line 626
    .local v3, "contact_Number":Ljava/lang/String;
    const-string v10, "+00000000000"
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d1} :catch_192

    .line 628
    .local v10, "phoneNumber":Ljava/lang/String;
    :try_start_d1
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    .line 629
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 630
    .local v9, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    .line 632
    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 633
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_ef} :catch_1ca

    move-result-object v10

    .line 639
    .end local v9    # "phoneManager":Landroid/telephony/TelephonyManager;
    :cond_f0
    :goto_f0
    :try_start_f0
    const-string v13, "Contact_Number"

    invoke-static {v8, v13}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 640
    if-eqz v3, :cond_19b

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19b

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v13, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 646
    :goto_107
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    const-string v14, "Email"

    invoke-static {v8, v14}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    const-string v14, "Address"

    invoke-static {v8, v14}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 649
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "Address"

    invoke-static {v8, v14}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/LibUserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 651
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lic/buzzebeeslib/LibUserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1a4

    .line 652
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 657
    :goto_140
    const-string v13, "Locale"

    invoke-static {v8, v13}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "1054"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ad

    .line 658
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    sget v14, Lic/buzzebeeslib/R$string;->profile_setting_select_language_th:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;

    sget v14, Lic/buzzebeeslib/R$drawable;->bz_icon_flag_thai_2x:I

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 667
    .end local v2    # "birth_date":Ljava/lang/String;
    .end local v3    # "contact_Number":Ljava/lang/String;
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    .end local v10    # "phoneNumber":Ljava/lang/String;
    .end local v11    # "strGender":Ljava/lang/String;
    :goto_16a
    return-void

    .line 606
    .restart local v8    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v11    # "strGender":Ljava/lang/String;
    :cond_16b
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "M"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_187

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "male"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7e

    .line 607
    :cond_187
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    const-string v14, "Male"

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_190} :catch_192

    goto/16 :goto_7e

    .line 664
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    .end local v11    # "strGender":Ljava/lang/String;
    :catch_192
    move-exception v7

    .line 665
    .local v7, "e":Ljava/lang/Exception;
    const-string v13, "Error while load profile data."

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_16a

    .line 643
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "birth_date":Ljava/lang/String;
    .restart local v3    # "contact_Number":Ljava/lang/String;
    .restart local v8    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v10    # "phoneNumber":Ljava/lang/String;
    .restart local v11    # "strGender":Ljava/lang/String;
    :cond_19b
    :try_start_19b
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v13, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 654
    :cond_1a4
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_140

    .line 661
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    sget v14, Lic/buzzebeeslib/R$string;->profile_setting_select_language_en:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;

    sget v14, Lic/buzzebeeslib/R$drawable;->bz_icon_flag_uk_2x:I

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1c9} :catch_192

    goto :goto_16a

    .line 635
    :catch_1ca
    move-exception v13

    goto/16 :goto_f0
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity;Z)V
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gIsSelectStartDateTime:Z

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gIsSelectStartDateTime:Z

    return v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V
    .registers 1

    .prologue
    .line 669
    invoke-direct {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->initialLayout()V

    return-void
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V
    .registers 1

    .prologue
    .line 530
    invoke-direct {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getProfilePicture()V

    return-void
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V
    .registers 1

    .prologue
    .line 545
    invoke-direct {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getProfileData()V

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->ProcessJsonProfileAndGenUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1151
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    return-object v0
.end method

.method private getOutputMediaFile(I)Ljava/io/File;
    .registers 7
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 370
    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "GalaxyGift"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    .local v0, "mediaStorageDir":Ljava/io/File;
    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "begin check mediaStorageDir.exists()"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    .line 376
    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "begin check mediaStorageDir.mkdirs()"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_30

    .line 378
    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "failed to create directory"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_2f
    :goto_2f
    return-object v2

    .line 383
    :cond_30
    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "end check mediaStorageDir.exists()"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "timeStamp":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2f

    .line 389
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

    sput-object v2, Lic/buzzebeeslib/activity/ProfileSettingActivity;->path:Ljava/lang/String;

    .line 390
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

    sput-object v2, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    .line 395
    sget-object v2, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    goto :goto_2f
.end method

.method private getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 358
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 360
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 362
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getProfileData()V
    .registers 7

    .prologue
    .line 546
    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 548
    const-string v0, ""

    .line 549
    .local v0, "catch_profiles":Ljava/lang/String;
    const-string v2, ""

    .line 550
    .local v2, "url":Ljava/lang/String;
    const-string v1, ""

    .line 551
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "profiles_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/profile/me/user?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 556
    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "catch_profiles "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->ProcessJsonProfileAndGenUI(Ljava/lang/String;)V

    .line 560
    :cond_6b
    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v3, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;

    invoke-direct {v3, p0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 562
    return-void
.end method

.method private getProfilePicture()V
    .registers 10

    .prologue
    .line 532
    :try_start_0
    const-string v8, ""

    .line 533
    .local v8, "profile_source":Ljava/lang/String;
    const-string v0, "profile_source"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "catch_profile_source":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 535
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lcom/bitmapfun/util/ImageFetcher;->IMAGE_LOADING_TRANS:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 538
    :cond_1f
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/LibUserLogin;->GetProfileImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 539
    const-string v0, "profile_source"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v8, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 543
    .end local v1    # "catch_profile_source":Ljava/lang/String;
    .end local v8    # "profile_source":Ljava/lang/String;
    :goto_3b
    return-void

    .line 540
    :catch_3c
    move-exception v0

    goto :goto_3b
.end method

.method private initialLayout()V
    .registers 41

    .prologue
    .line 672
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v37

    const-string v38, "fonts/DSNSKW_.TTF"

    invoke-static/range {v37 .. v38}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 673
    .local v6, "font_HEADER":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v37

    const-string v38, "fonts/kit55p.ttf"

    invoke-static/range {v37 .. v38}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 675
    .local v5, "font":Landroid/graphics/Typeface;
    sget v37, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 677
    .local v26, "tvHeaderCaption":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvFullName:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    .line 678
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvLogoProfileSettingWith:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 679
    .local v30, "tvLogoProfileSettingWith":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvPersonal:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 680
    .local v34, "tvPersonal":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvFirstname0:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 681
    .local v25, "tvFirstname0":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvFirstname:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 682
    .local v24, "tvFirstname":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvLastname0:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 683
    .local v29, "tvLastname0":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvLastname:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 684
    .local v28, "tvLastname":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvSex0:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 685
    .local v36, "tvSex0":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvSex:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 686
    .local v35, "tvSex":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvBirthday0:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 687
    .local v19, "tvBirthday0":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvBirthday:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 688
    .local v18, "tvBirthday":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvContact:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 689
    .local v20, "tvContact":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvMobile:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 690
    .local v31, "tvMobile":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvMobile0:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 691
    .local v32, "tvMobile0":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvEmail0:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 692
    .local v23, "tvEmail0":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvEmail:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 693
    .local v22, "tvEmail":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvAddress0:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 694
    .local v17, "tvAddress0":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvAddress:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 695
    .local v16, "tvAddress":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvLanguage0:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 696
    .local v27, "tvLanguage0":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvNotification0:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 697
    .local v33, "tvNotification0":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvDisplayLanguage:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 698
    .local v21, "tvDisplayLanguage":Landroid/widget/TextView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->toggleNotificationButton:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ToggleButton;

    .line 699
    .local v15, "toggleNotificationButton":Landroid/widget/ToggleButton;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->btUpdate:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 702
    .local v4, "btUpdate":Landroid/widget/Button;
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->tvFullName:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 704
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 705
    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 706
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 707
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 708
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 709
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 710
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 711
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 712
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 713
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 714
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 715
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 716
    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 717
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 718
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 719
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 720
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 721
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 722
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 723
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 724
    invoke-virtual {v15, v5}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 725
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b4} :catch_4d2

    .line 732
    .end local v4    # "btUpdate":Landroid/widget/Button;
    .end local v5    # "font":Landroid/graphics/Typeface;
    .end local v6    # "font_HEADER":Landroid/graphics/Typeface;
    .end local v15    # "toggleNotificationButton":Landroid/widget/ToggleButton;
    .end local v16    # "tvAddress":Landroid/widget/TextView;
    .end local v17    # "tvAddress0":Landroid/widget/TextView;
    .end local v18    # "tvBirthday":Landroid/widget/TextView;
    .end local v19    # "tvBirthday0":Landroid/widget/TextView;
    .end local v20    # "tvContact":Landroid/widget/TextView;
    .end local v21    # "tvDisplayLanguage":Landroid/widget/TextView;
    .end local v22    # "tvEmail":Landroid/widget/TextView;
    .end local v23    # "tvEmail0":Landroid/widget/TextView;
    .end local v24    # "tvFirstname":Landroid/widget/TextView;
    .end local v25    # "tvFirstname0":Landroid/widget/TextView;
    .end local v26    # "tvHeaderCaption":Landroid/widget/TextView;
    .end local v27    # "tvLanguage0":Landroid/widget/TextView;
    .end local v28    # "tvLastname":Landroid/widget/TextView;
    .end local v29    # "tvLastname0":Landroid/widget/TextView;
    .end local v30    # "tvLogoProfileSettingWith":Landroid/widget/TextView;
    .end local v31    # "tvMobile":Landroid/widget/TextView;
    .end local v32    # "tvMobile0":Landroid/widget/TextView;
    .end local v33    # "tvNotification0":Landroid/widget/TextView;
    .end local v34    # "tvPersonal":Landroid/widget/TextView;
    .end local v35    # "tvSex":Landroid/widget/TextView;
    .end local v36    # "tvSex0":Landroid/widget/TextView;
    :goto_1b4
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->pbLoadingProfile:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ProgressBar;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    .line 733
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->imgProfile:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    .line 734
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvFirstname:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/EditText;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    .line 735
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvLastname:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/EditText;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    .line 736
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvSex:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/EditText;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    .line 737
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvBirthday:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/EditText;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    .line 738
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvMobile:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/EditText;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    .line 739
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvEmail:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/EditText;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    .line 740
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvAddress:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/EditText;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    .line 742
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->toggleNotificationButton:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ToggleButton;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    .line 743
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->LayoutSelectLanguage:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/LinearLayout;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->LayoutSelectLanguage:Landroid/widget/LinearLayout;

    .line 744
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvDisplayLanguage:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    .line 745
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->imgDisplayLanguage:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;

    .line 748
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->imgLogoProfileSettingWith:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgLogoProfileSettingWith:Landroid/widget/ImageView;

    .line 749
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->tvLogoProfileSettingWith:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLogoProfileSettingWith:Landroid/widget/TextView;

    .line 752
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->imgLockKey1:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 753
    .local v7, "gImgLockKey1":Landroid/widget/ImageView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->imgLockKey2:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 754
    .local v8, "gImgLockKey2":Landroid/widget/ImageView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->imgLockKey3:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 755
    .local v9, "gImgLockKey3":Landroid/widget/ImageView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->imgLockKey4:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 756
    .local v10, "gImgLockKey4":Landroid/widget/ImageView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->imgLockKey5:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 757
    .local v11, "gImgLockKey5":Landroid/widget/ImageView;
    sget v37, Lic/buzzebeeslib/R$idProfileSetting;->imgLockKey6:I

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 759
    .local v12, "gImgLockKey6":Landroid/widget/ImageView;
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v13, v0, [Ljava/lang/String;

    const/16 v37, 0x0

    const-string v38, "Female"

    aput-object v38, v13, v37

    const/16 v37, 0x1

    const-string v38, "Male"

    aput-object v38, v13, v37

    .line 760
    .local v13, "itemsGender":[Ljava/lang/String;
    new-instance v37, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    sget v39, Lic/buzzebeeslib/R$layout;->bz_spinner_item:I

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lic/buzzebeeslib/LibUserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "2"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_447

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    new-instance v38, Lic/buzzebeeslib/activity/ProfileSettingActivity$3;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity$3;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    move-object/from16 v37, v0

    new-instance v38, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;[Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->SelectDateStart:Landroid/view/View$OnTouchListener;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 789
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 796
    sget v37, Lic/buzzebeeslib/R$drawable;->bz_icon_required:I

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    move/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v7, v0, v1}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 797
    sget v37, Lic/buzzebeeslib/R$drawable;->bz_icon_required:I

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    move/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v8, v0, v1}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 798
    sget v37, Lic/buzzebeeslib/R$drawable;->bz_icon_required:I

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    move/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v9, v0, v1}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 815
    :cond_3ed
    :goto_3ed
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lic/buzzebeeslib/LibUserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v37

    if-eqz v37, :cond_4c5

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 821
    :goto_402
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v14, v0, [Ljava/lang/String;

    const/16 v37, 0x0

    sget v38, Lic/buzzebeeslib/R$string;->profile_setting_select_language_th:I

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v14, v37

    const/16 v37, 0x1

    sget v38, Lic/buzzebeeslib/R$string;->profile_setting_select_language_en:I

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v14, v37

    .line 822
    .local v14, "itemsLanguage":[Ljava/lang/String;
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v37

    const v38, 0x1090009

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v3, v0, v1, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 824
    .local v3, "adapterLanguage":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->LayoutSelectLanguage:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    new-instance v38, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v14}, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v38}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    return-void

    .line 799
    .end local v3    # "adapterLanguage":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v14    # "itemsLanguage":[Ljava/lang/String;
    :cond_447
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lic/buzzebeeslib/LibUserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "1"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3ed

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 806
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 807
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 810
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 811
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3ed

    .line 818
    :cond_4c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_402

    .line 727
    .end local v7    # "gImgLockKey1":Landroid/widget/ImageView;
    .end local v8    # "gImgLockKey2":Landroid/widget/ImageView;
    .end local v9    # "gImgLockKey3":Landroid/widget/ImageView;
    .end local v10    # "gImgLockKey4":Landroid/widget/ImageView;
    .end local v11    # "gImgLockKey5":Landroid/widget/ImageView;
    .end local v12    # "gImgLockKey6":Landroid/widget/ImageView;
    .end local v13    # "itemsGender":[Ljava/lang/String;
    :catch_4d2
    move-exception v37

    goto/16 :goto_1b4
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 468
    const-string v2, "profile.setting"

    const-string v3, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v2, "onSaveInstanceState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 497
    const-string v2, "gObjCameraData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/CameraData;

    .line 500
    .local v1, "retain":Lic/buzzebeeslib/bean/CameraData;
    if-nez v1, :cond_25

    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    if-nez v2, :cond_25

    .line 501
    new-instance v2, Lic/buzzebeeslib/bean/CameraData;

    invoke-direct {v2}, Lic/buzzebeeslib/bean/CameraData;-><init>()V

    iput-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    .line 528
    .end local v1    # "retain":Lic/buzzebeeslib/bean/CameraData;
    :cond_24
    :goto_24
    return-void

    .line 503
    .restart local v1    # "retain":Lic/buzzebeeslib/bean/CameraData;
    :cond_25
    iput-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    .line 505
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CameraData;->gPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 506
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_24

    .line 508
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-eqz v2, :cond_3b

    .line 509
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 512
    :cond_3b
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 513
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iput-object v0, v2, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 515
    if-eqz v0, :cond_24

    .line 516
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 517
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_24
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1152
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/ProfileSettingActivity$6;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/ProfileSettingActivity$6;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1159
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 898
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->finish()V

    .line 899
    return-void
.end method

.method public doGoToUpdate(Landroid/view/View;)V
    .registers 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 903
    new-instance v4, Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v4, v12}, Lic/buzzebeeslib/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 904
    .local v4, "cd":Lic/buzzebeeslib/util/ConnectionDetector;
    invoke-virtual {v4}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v12

    if-nez v12, :cond_1f

    .line 905
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lic/buzzebeeslib/R$string;->no_network_connection:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 1088
    :goto_1e
    return-void

    .line 909
    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_43

    .line 910
    sget v12, Lic/buzzebeeslib/R$string;->profile_setting_label_varidate_first_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1e

    .line 912
    :cond_43
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_67

    .line 913
    sget v12, Lic/buzzebeeslib/R$string;->profile_setting_label_varidate_last_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1e

    .line 921
    :cond_67
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-nez v12, :cond_b1

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b1

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b1

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3de

    .line 966
    :cond_b1
    const-string v11, ""

    .line 973
    .local v11, "url":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "api/profile/me/user?token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 975
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "url= "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    new-instance v9, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v9}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 986
    .local v9, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-eqz v12, :cond_12f

    .line 987
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_12f

    .line 989
    :try_start_fb
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 990
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v12, v13, v14, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 995
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 996
    .local v2, "bitmapdata":[B
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "bitmapdata "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v12, "data"

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_12f} :catch_358

    .line 1004
    .end local v2    # "bitmapdata":[B
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_12f
    :goto_12f
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "female"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35e

    .line 1005
    const-string v12, "gender"

    const-string v13, "female"

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v12, "profile.setting"

    const-string v13, "gender female"

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_155
    :goto_155
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1ae

    .line 1013
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1015
    .local v10, "str_date":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1016
    .local v5, "date":Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v12, "dd/MM/yyyy"

    invoke-direct {v7, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v7, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_17d
    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_180
    .catch Ljava/text/ParseException; {:try_start_17d .. :try_end_180} :catch_386

    move-result-object v5

    .line 1023
    :goto_181
    const-string v12, "birthdate"

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "birthdate "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    .end local v5    # "date":Ljava/util/Date;
    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v10    # "str_date":Ljava/lang/String;
    :cond_1ae
    const-string v12, "email"

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "email "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvEmail:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v12, "ShippingFirstName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "firstname "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v12, "ShippingLastName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lastname "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v12, "Contact_Number"

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "contact_number "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvMobile:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    if-eqz v12, :cond_38c

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_38c

    .line 1051
    const-string v12, "address"

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "address "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lic/buzzebeeslib/R$string;->profile_setting_select_language_en:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3ac

    .line 1062
    const-string v12, "locale"

    const-string v13, "1033"

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "locale "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :goto_2f8
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    invoke-virtual {v12}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lic/buzzebeeslib/LibUserLogin;->SetIsNotificationOn(Landroid/content/Context;Z)Z

    move-result v13

    if-eq v12, v13, :cond_32b

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gToggleNotificationButton:Landroid/widget/ToggleButton;

    invoke-virtual {v13}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/LibUserLogin;->SetIsNotificationOn(Landroid/content/Context;Z)Z

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lic/buzzebeeslib/LibUserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3d5

    .line 1073
    const-string v12, "notification"

    const-string v13, "true"

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_32b
    :goto_32b
    new-instance v8, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v8}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1081
    .local v8, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v12, 0x1d4c0

    invoke-virtual {v8, v12}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "url="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    new-instance v12, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V

    invoke-virtual {v8, v11, v9, v12}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_1e

    .line 998
    .end local v8    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    :catch_358
    move-exception v6

    .line 999
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12f

    .line 1007
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_35e
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "male"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_155

    .line 1008
    const-string v12, "gender"

    const-string v13, "male"

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v12, "profile.setting"

    const-string v13, "gender male"

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_155

    .line 1019
    .restart local v5    # "date":Ljava/util/Date;
    .restart local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v10    # "str_date":Ljava/lang/String;
    :catch_386
    move-exception v6

    .line 1020
    .local v6, "e":Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_181

    .line 1054
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "e":Ljava/text/ParseException;
    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v10    # "str_date":Ljava/lang/String;
    :cond_38c
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    if-eqz v12, :cond_3a1

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lic/buzzebeeslib/R$string;->profile_setting_label_varidate_email:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 1057
    :cond_3a1
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1e

    .line 1065
    :cond_3ac
    const-string v12, "locale"

    const-string v13, "1054"

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v12, "profile.setting"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "locale "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f8

    .line 1076
    :cond_3d5
    const-string v12, "notification"

    const-string v13, "false"

    invoke-virtual {v9, v12, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32b

    .line 1085
    .end local v9    # "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    .end local v11    # "url":Ljava/lang/String;
    :cond_3de
    sget v12, Lic/buzzebeeslib/R$string;->profile_setting_label_validate_data:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 234
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 235
    if-ne p2, v0, :cond_61

    if-ne p1, v4, :cond_61

    .line 236
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lic/buzzebeeslib/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 237
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    .line 238
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 239
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    aget-object v0, v2, v10

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 241
    .local v7, "columnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 242
    .local v9, "filePath":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 244
    invoke-static {v9}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 246
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-nez v6, :cond_43

    .line 247
    const-string v0, "You can not select this picture, try to select another picture."

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    .line 289
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "columnIndex":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_42
    :goto_42
    return-void

    .line 249
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "columnIndex":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "filePath":Ljava/lang/String;
    :cond_43
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iput-object v6, v0, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 251
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-eqz v0, :cond_50

    .line 252
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    :cond_50
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    if-eqz v6, :cond_42

    .line 257
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 258
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_42

    .line 264
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "columnIndex":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_61
    if-ne p2, v0, :cond_42

    const/4 v0, 0x2

    if-ne p1, v0, :cond_42

    .line 266
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CameraData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 267
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_8f

    .line 268
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iput-object v6, v0, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 270
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-eqz v0, :cond_7d

    .line 271
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    :cond_7d
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 275
    if-eqz v6, :cond_42

    .line 276
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 277
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 279
    :cond_8d
    const/4 v6, 0x0

    .line 282
    goto :goto_42

    .line 283
    :cond_8f
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iput-object v3, v0, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_42
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 303
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_aa

    :cond_a
    :goto_a
    move v2, v3

    .line 352
    :goto_b
    return v2

    .line 305
    :pswitch_c
    iget-object v4, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iput-boolean v2, v4, Lic/buzzebeeslib/bean/CameraData;->gIsModeTakePhoto:Z

    .line 308
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v2, "Select Picture"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 315
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_29
    iget-object v4, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iput-boolean v3, v4, Lic/buzzebeeslib/bean/CameraData;->gIsModeTakePhoto:Z

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    .line 320
    iget-object v4, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 322
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v4, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->fileUri:Landroid/net/Uri;

    iput-object v4, v2, Lic/buzzebeeslib/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 323
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    sget-object v4, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    iput-object v4, v2, Lic/buzzebeeslib/bean/CameraData;->gMediaFile:Ljava/io/File;

    .line 324
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    sget-object v4, Lic/buzzebeeslib/activity/ProfileSettingActivity;->path:Ljava/lang/String;

    iput-object v4, v2, Lic/buzzebeeslib/bean/CameraData;->gPath:Ljava/lang/String;

    .line 326
    const-string v2, "output"

    sget-object v4, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mediaFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 328
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 330
    :cond_6a
    const-string v3, "Please check your memory card."

    invoke-direct {p0, v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_b

    .line 336
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_70
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    if-eqz v2, :cond_a

    .line 337
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8f

    .line 338
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 339
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    :cond_8b
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iput-object v5, v2, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 343
    :cond_8f
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v2, :cond_99

    .line 344
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iput-object v5, v2, Lic/buzzebeeslib/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 346
    :cond_99
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 347
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgProfile:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_a

    .line 303
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_c
        :pswitch_29
        :pswitch_70
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    if-eqz p1, :cond_b4

    .line 133
    const-string v6, "profile.setting"

    const-string v7, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_c
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->requestWindowFeature(I)Z

    .line 139
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 141
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 144
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 146
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 147
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gScreenHeight:I

    .line 149
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gScreenWidth:I

    .line 151
    iget v5, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gScreenWidth:I

    .line 152
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gScreenHeight:I

    .line 154
    .local v2, "height":I
    if-le v2, v5, :cond_bd

    .end local v2    # "height":I
    :goto_59
    div-int/lit8 v3, v2, 0x2

    .line 155
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 156
    iget-object v6, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 157
    iget-object v6, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 158
    iget-object v6, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 160
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gLangOld:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 163
    sget v6, Lic/buzzebeeslib/R$layout;->bz_profile_setting:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->setContentView(I)V

    .line 165
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;

    .line 167
    invoke-direct {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->initialLayout()V

    .line 168
    invoke-direct {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getProfilePicture()V

    .line 169
    invoke-direct {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getProfileData()V

    .line 171
    if-nez p1, :cond_bf

    .line 172
    new-instance v6, Lic/buzzebeeslib/bean/CameraData;

    invoke-direct {v6}, Lic/buzzebeeslib/bean/CameraData;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    .line 177
    :goto_ab
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 178
    return-void

    .line 135
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "longest":I
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "width":I
    :cond_b4
    const-string v6, "profile.setting"

    const-string v7, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "width":I
    :cond_bd
    move v2, v5

    .line 154
    goto :goto_59

    .line 174
    .end local v2    # "height":I
    .restart local v3    # "longest":I
    :cond_bf
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_ab
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

    .line 400
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 401
    const-string v0, "Post photo on profile"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 402
    const-string v0, "Choose From Gallery"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 403
    const-string v0, "Take Photo"

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 405
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->gObjCameraData:Lic/buzzebeeslib/bean/CameraData;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 406
    const-string v0, "Delete Photo"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 410
    :goto_24
    return-void

    .line 408
    :cond_25
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_24
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .param p1, "id"    # I

    .prologue
    .line 293
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 294
    .local v6, "date":Ljava/util/Date;
    packed-switch p1, :pswitch_data_22

    .line 298
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 296
    :pswitch_a
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

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

    .line 294
    nop

    :pswitch_data_22
    .packed-switch 0xa
        :pswitch_a
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 224
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 226
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 228
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 230
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 182
    const/4 v2, 0x4

    if-ne p1, v2, :cond_18

    .line 184
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->finish()V

    .line 190
    const/4 v2, 0x1

    .line 192
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_17
    return v2

    :cond_18
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_17
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 208
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 213
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 214
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 215
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 464
    const-string v0, "profile.setting"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 203
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 204
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 435
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    return-void
.end method
