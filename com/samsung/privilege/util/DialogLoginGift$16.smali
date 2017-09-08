.class final Lcom/samsung/privilege/util/DialogLoginGift$16;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 886
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 890
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 891
    const-string/jumbo v0, "token"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    const-string/jumbo v2, "version"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 893
    const-string/jumbo v3, "logon_message_id"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 894
    const-string/jumbo v4, "logon_message"

    invoke-static {v1, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 896
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Z)Z

    .line 897
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 898
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 900
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v5, "locale"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 901
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v5, "userId"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 902
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v5, "userLevel"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z

    .line 904
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v5, "isPremiumUser"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Z)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6e} :catch_17c

    .line 907
    :try_start_6e
    const-string/jumbo v0, "detail"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_188

    .line 909
    const-string/jumbo v5, "ewallet_token"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_167

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_167

    .line 911
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_8e} :catch_171

    .line 922
    :goto_8e
    :try_start_8e
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 923
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v5, "1108"

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 931
    :cond_a4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_ab} :catch_17c

    .line 934
    :try_start_ab
    const-string/jumbo v0, "sponsor_pages"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->n:Ljava/lang/String;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b4} :catch_192

    .line 940
    :goto_b4
    :try_start_b4
    const-string/jumbo v0, "updated_points"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 941
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v6, "points"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;J)Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c7} :catch_1b4

    .line 945
    :goto_c7
    :try_start_c7
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updated_points="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->D(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e8} :catch_17c

    .line 948
    :try_start_e8
    const-string/jumbo v0, "user_rank"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 949
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v6, "rank"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_fb} :catch_1be

    .line 967
    :goto_fb
    :try_start_fb
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 969
    const-string/jumbo v5, "points"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 970
    if-lez v0, :cond_127

    .line 971
    new-instance v5, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v6, "point"

    invoke-direct {v5, v6}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 972
    const-string/jumbo v6, "weeklytopup"

    iput-object v6, v5, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    .line 973
    iput v0, v5, Lcom/bzbs/bean/MessagePopup;->point_number:I

    .line 976
    iget v6, v5, Lcom/bzbs/bean/MessagePopup;->point_number:I

    iget-object v5, v5, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v6, v5, v7, v0}, Lcom/samsung/privilege/util/AnimationPointGift;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_127} :catch_364

    .line 983
    :cond_127
    :goto_127
    :try_start_127
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 985
    const-string/jumbo v5, "badges"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 986
    const/4 v0, 0x0

    :goto_136
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_22c

    .line 987
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 988
    new-instance v7, Lcom/bzbs/bean/BadgeAlert;

    invoke-direct {v7, v6}, Lcom/bzbs/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 990
    new-instance v6, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v8, "badge"

    invoke-direct {v6, v8}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 991
    iput-object v7, v6, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 993
    iget-object v8, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_154} :catch_22b

    .line 997
    :try_start_154
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "dashboard:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e0

    .line 998
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_164} :catch_1f2

    .line 986
    :cond_164
    :goto_164
    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    .line 913
    :cond_167
    :try_start_167
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16f} :catch_171

    goto/16 :goto_8e

    .line 918
    :catch_171
    move-exception v0

    .line 919
    :try_start_172
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_17a} :catch_17c

    goto/16 :goto_8e

    .line 1065
    :catch_17c
    move-exception v0

    .line 1066
    const-string/jumbo v0, "Authentication with BuzzeBees Fail...\r\n{Invalid data format}..."

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 1068
    :cond_187
    :goto_187
    return-void

    .line 916
    :cond_188
    :try_start_188
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_190} :catch_171

    goto/16 :goto_8e

    .line 935
    :catch_192
    move-exception v0

    .line 936
    :try_start_193
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t get sponsor data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b4

    .line 942
    :catch_1b4
    move-exception v0

    .line 943
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;J)Z

    goto/16 :goto_c7

    .line 950
    :catch_1be
    move-exception v0

    .line 951
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t get user_rank data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1de} :catch_17c

    goto/16 :goto_fb

    .line 999
    :cond_1e0
    :try_start_1e0
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "campaignId:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f5

    .line 1000
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    goto/16 :goto_164

    .line 1008
    :catch_1f2
    move-exception v6

    goto/16 :goto_164

    .line 1001
    :cond_1f5
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "campaignbzbId:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_207

    .line 1002
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    goto/16 :goto_164

    .line 1003
    :cond_207
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "url:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_219

    .line 1004
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    goto/16 :goto_164

    .line 1005
    :cond_219
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "categoryId:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_164

    .line 1006
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_229} :catch_1f2

    goto/16 :goto_164

    .line 1012
    :catch_22b
    move-exception v0

    .line 1016
    :cond_22c
    :try_start_22c
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_287

    .line 1041
    :goto_235
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1043
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->G(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v9, :cond_187

    .line 1044
    if-eqz v4, :cond_353

    const-string/jumbo v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_353

    .line 1045
    new-instance v1, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v0, "message"

    invoke-direct {v1, v0}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1046
    iput-object v3, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 1047
    iput-object v4, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 1050
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v0, :cond_342

    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_342

    .line 1051
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2043"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_315

    .line 1052
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->c:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->f:Ljava/lang/Object;

    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Object;)V

    goto/16 :goto_187

    .line 1019
    :cond_287
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1020
    const-string/jumbo v1, "menu_buzzebees_visible"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1021
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Z)Z

    .line 1023
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v2, "allow_use"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;Z)Z

    .line 1024
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v2, "has_new_version"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Z)Z

    .line 1025
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v2, "token_need_logout"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Z)Z

    .line 1026
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v2, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;Z)Z

    .line 1027
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v2, "is_enable_beacon"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;Z)Z

    .line 1028
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    const-string/jumbo v2, "userlevel_show_otherpoint"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;J)Z
    :try_end_2fa
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_2fa} :catch_17c

    .line 1031
    :try_start_2fa
    const-string/jumbo v1, "show_mygift_on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1032
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_30a
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_30a} :catch_362

    .line 1038
    :goto_30a
    :try_start_30a
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;)V

    goto/16 :goto_235

    .line 1053
    :cond_315
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2045"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_331

    .line 1054
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->c:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->f:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Object;)V

    goto/16 :goto_187

    .line 1056
    :cond_331
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->c:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->f:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Object;)V

    goto/16 :goto_187

    .line 1059
    :cond_342
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->c:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->f:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Object;)V

    goto/16 :goto_187

    .line 1062
    :cond_353
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$16;->f:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_30a .. :try_end_360} :catch_17c

    goto/16 :goto_187

    .line 1034
    :catch_362
    move-exception v0

    goto :goto_30a

    .line 978
    :catch_364
    move-exception v0

    goto/16 :goto_127
.end method
