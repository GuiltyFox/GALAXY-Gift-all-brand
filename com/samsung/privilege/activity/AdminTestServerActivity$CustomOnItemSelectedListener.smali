.class Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;
.super Ljava/lang/Object;
.source "AdminTestServerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/AdminTestServerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomOnItemSelectedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/AdminTestServerActivity;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/AdminTestServerActivity;Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;)V
    .registers 3

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;-><init>(Lcom/samsung/privilege/activity/AdminTestServerActivity;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 18
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "selectedText":Ljava/lang/String;
    const-string v9, "BuzzeBees Token"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 90
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/admin/token?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&password=Iconcepts1688"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_42
    return-void

    .line 91
    :cond_43
    const-string v9, "Resume"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14b

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "api/auth/device_resume?token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v10}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "url":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v4, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v2, Lcom/samsung/privilege/util/DeviceHelper;

    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 97
    .local v2, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "android_id":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "platform":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&platform="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 104
    .local v0, "AndroidVersion":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&os=android "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    const-string v8, ""

    .line 108
    .local v8, "versionName":Ljava/lang/String;
    :try_start_e6
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v10}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v8, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_101
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e6 .. :try_end_101} :catch_131

    .line 112
    :goto_101
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&client_version="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v10}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 114
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 109
    :catch_131
    move-exception v3

    .line 110
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "buzzebees.resume"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t get versionName:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    .line 115
    .end local v0    # "AndroidVersion":Ljava/lang/String;
    .end local v1    # "android_id":Ljava/lang/String;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v5    # "platform":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "versionName":Ljava/lang/String;
    :cond_14b
    const-string v9, "Permissions"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_177

    .line 116
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "https://graph.facebook.com/me/permissions?access_token="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 117
    :cond_177
    const-string v9, "Dashboard"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19f

    .line 118
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/config/samsunggift?format=json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 119
    :cond_19f
    const-string v9, "News feed"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cb

    .line 120
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "https://graph.facebook.com/me/home?access_token="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 121
    :cond_1cb
    const-string v9, "Noti BuzzeBees(mode=new)"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_207

    .line 122
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/noti?mode=new&token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&format=json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 123
    :cond_207
    const-string v9, "Noti BuzzeBees"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_243

    .line 124
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/noti?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&format=json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 125
    :cond_243
    const-string v9, "Noti Facebook"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26f

    .line 126
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "https://graph.facebook.com/fql?q=SELECT notification_id,sender_id,recipient_id,created_time,updated_time,title_html,title_text,body_html,body_text,href,app_id,is_unread,is_hidden,object_id,object_type,icon_url,href FROM notification WHERE recipient_id  = me() AND object_type != \'app_request\'  AND is_hidden = 0 Order By updated_time desc limit 10 &access_token="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 127
    :cond_26f
    const-string v9, "Points"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b9

    .line 128
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/profile/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/point?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 129
    :cond_2b9
    const-string v9, "Market Campaign"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f5

    .line 130
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/campaign?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&format=json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 131
    :cond_2f5
    const-string v9, "Market Campaign Category"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32b

    .line 132
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/campaigncat/full_menu?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 133
    :cond_32b
    const-string v9, "Friend Global"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_361

    .line 134
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/rank/global?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 135
    :cond_361
    const-string v9, "Friend List"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39d

    .line 136
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/rank/friends?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&format=json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 137
    :cond_39d
    const-string v9, "Badges"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e7

    .line 138
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/profile/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/badges?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 139
    :cond_3e7
    const-string v9, "Places"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_423

    .line 140
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/place?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&center=13.7549674,100.5730229"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 141
    :cond_423
    const-string v9, "Sponsor Promotion"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_473

    .line 142
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/config/sponsor"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&format=json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 143
    :cond_473
    const-string v9, "Stickers"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a9

    .line 144
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/stickerset?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 146
    :cond_4a9
    iget-object v9, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method
