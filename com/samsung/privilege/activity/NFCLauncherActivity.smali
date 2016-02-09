.class public Lcom/samsung/privilege/activity/NFCLauncherActivity;
.super Landroid/app/Activity;
.source "NFCLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;,
        Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;
    }
.end annotation


# static fields
.field private static gHandler:Landroid/os/Handler;


# instance fields
.field private TAG:Ljava/lang/String;

.field private gArrayNFCTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/NFCTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-class v0, Lcom/samsung/privilege/activity/NFCLauncherActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->gArrayNFCTag:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/NFCLauncherActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 321
    sget-object v0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/NFCLauncherActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/NFCLauncherActivity$2;-><init>(Lcom/samsung/privilege/activity/NFCLauncherActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-eqz p1, :cond_1f

    .line 52
    const-string v0, "buzzebees.market"

    const-string v1, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->requestWindowFeature(I)Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->gHandler:Landroid/os/Handler;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 62
    return-void

    .line 54
    :cond_1f
    const-string v0, "buzzebees.market"

    const-string v1, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onResume()V
    .registers 22

    .prologue
    .line 66
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 68
    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/util/NfcUtils;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v16

    .line 71
    .local v16, "messages":[Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v18

    .line 72
    .local v18, "payload":[B
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 83
    .local v19, "strTasks":Ljava/lang/String;
    const/4 v8, 0x0

    .line 85
    .local v8, "blnIsAdmin":Z
    :try_start_33
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_67

    move-result v2

    if-eqz v2, :cond_3e

    .line 86
    const/4 v8, 0x1

    .line 93
    :cond_3e
    :goto_3e
    :try_start_3e
    new-instance v15, Lorg/json/JSONArray;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 94
    .local v15, "jsonRoot":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_46
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_49} :catch_c0

    move-result v2

    if-lt v12, v2, :cond_83

    .line 115
    .end local v12    # "i":I
    .end local v15    # "jsonRoot":Lorg/json/JSONArray;
    :goto_4c
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->gArrayNFCTag:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v12, v2, :cond_118

    .line 170
    .end local v8    # "blnIsAdmin":Z
    .end local v12    # "i":I
    .end local v16    # "messages":[Landroid/nfc/NdefMessage;
    .end local v18    # "payload":[B
    .end local v19    # "strTasks":Ljava/lang/String;
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    return-void

    .line 88
    .restart local v8    # "blnIsAdmin":Z
    .restart local v16    # "messages":[Landroid/nfc/NdefMessage;
    .restart local v18    # "payload":[B
    .restart local v19    # "strTasks":Ljava/lang/String;
    :catch_67
    move-exception v11

    .line 89
    .local v11, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 96
    .end local v11    # "e2":Ljava/lang/Exception;
    .restart local v12    # "i":I
    .restart local v15    # "jsonRoot":Lorg/json/JSONArray;
    :cond_83
    :try_start_83
    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 98
    .local v14, "jsonAction":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->gArrayNFCTag:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/privilege/bean/NFCTag;

    const-string v6, "nfc"

    invoke-direct {v5, v6, v14}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_95} :catch_98

    .line 94
    .end local v14    # "jsonAction":Lorg/json/JSONObject;
    :goto_95
    add-int/lit8 v12, v12, 0x1

    goto :goto_46

    .line 99
    :catch_98
    move-exception v10

    .line 100
    .local v10, "e":Lorg/json/JSONException;
    if-eqz v8, :cond_e9

    .line 101
    :try_start_9b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid NFC Action:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V
    :try_end_bf
    .catch Lorg/json/JSONException; {:try_start_9b .. :try_end_bf} :catch_c0

    goto :goto_95

    .line 107
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v12    # "i":I
    .end local v15    # "jsonRoot":Lorg/json/JSONArray;
    :catch_c0
    move-exception v10

    .line 108
    .restart local v10    # "e":Lorg/json/JSONException;
    if-eqz v8, :cond_100

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid NFC Task:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4c

    .line 103
    .restart local v12    # "i":I
    .restart local v15    # "jsonRoot":Lorg/json/JSONArray;
    :cond_e9
    :try_start_e9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid NFC Action:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V
    :try_end_ff
    .catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_ff} :catch_c0

    goto :goto_95

    .line 111
    .end local v12    # "i":I
    .end local v15    # "jsonRoot":Lorg/json/JSONArray;
    :cond_100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid NFC Task:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4c

    .line 116
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v12    # "i":I
    :cond_118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/NFCLauncherActivity;->gArrayNFCTag:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/privilege/bean/NFCTag;

    .line 118
    .local v17, "objNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Status"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_173

    .line 119
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v4, "params":Landroid/os/Bundle;
    const-string v2, "app_id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "message"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v9, Lcom/facebook/widget/WebDialog$Builder;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    const-string v5, "feed"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2, v5, v4}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    .local v9, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v2, Lcom/samsung/privilege/activity/NFCLauncherActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/privilege/activity/NFCLauncherActivity$1;-><init>(Lcom/samsung/privilege/activity/NFCLauncherActivity;)V

    invoke-virtual {v9, v2}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 144
    invoke-virtual {v9}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v20

    .line 145
    .local v20, "webDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual/range {v20 .. v20}, Lcom/facebook/widget/WebDialog;->show()V

    .line 115
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v9    # "builder":Lcom/facebook/widget/WebDialog$Builder;
    .end local v20    # "webDialog":Lcom/facebook/widget/WebDialog;
    :goto_16f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4d

    .line 146
    :cond_173
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CheckIn"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 147
    const-string v3, ""

    .line 148
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 149
    .restart local v4    # "params":Landroid/os/Bundle;
    const-string v2, "message"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "place"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v3, "me/checkins"

    .line 153
    sget-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-nez v2, :cond_1bc

    .line 154
    new-instance v2, Lcom/facebook/android/AsyncFacebookRunner;

    new-instance v5, Lcom/facebook/android/Facebook;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    sput-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 157
    :cond_1bc
    sget-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v5, "POST"

    new-instance v6, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;-><init>(Lcom/samsung/privilege/activity/NFCLauncherActivity;Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;)V

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    goto :goto_16f

    .line 158
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_1cd
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ReDeem"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_203

    .line 159
    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v13, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v13, "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    move-object/from16 v0, v17

    iget v5, v0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    invoke-virtual {v13, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v2, "nfc_tag"

    move-object/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 162
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_16f

    .line 164
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_203
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid NFC ActionName:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_16f
.end method
