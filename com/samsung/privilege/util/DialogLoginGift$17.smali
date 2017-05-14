.class final Lcom/samsung/privilege/util/DialogLoginGift$17;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 872
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 876
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 877
    const-string/jumbo v0, "token"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    const-string/jumbo v2, "version"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 879
    const-string/jumbo v3, "logon_message_id"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 880
    const-string/jumbo v4, "logon_message"

    invoke-static {v1, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 882
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Z)Z

    .line 883
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 884
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Ljava/lang/String;)Z

    .line 886
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "locale"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 887
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "userId"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Ljava/lang/String;)Z

    .line 888
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "userLevel"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z

    .line 890
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "isPremiumUser"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Z)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_17c

    .line 893
    :try_start_6d
    const-string/jumbo v0, "detail"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_188

    .line 895
    const-string/jumbo v5, "ewallet_token"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    if-eqz v0, :cond_167

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_167

    .line 897
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8d} :catch_171

    .line 908
    :goto_8d
    :try_start_8d
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "768830479847872"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 909
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "1108"

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 917
    :cond_a4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_ab} :catch_17c

    .line 920
    :try_start_ab
    const-string/jumbo v0, "sponsor_pages"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b4} :catch_192

    .line 926
    :goto_b4
    :try_start_b4
    const-string/jumbo v0, "updated_points"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 927
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v6, "points"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;J)Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c7} :catch_1b4

    .line 931
    :goto_c7
    :try_start_c7
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updated_points="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->D(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e8} :catch_17c

    .line 934
    :try_start_e8
    const-string/jumbo v0, "user_rank"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 935
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v6, "rank"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_fb} :catch_1be

    .line 953
    :goto_fb
    :try_start_fb
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 955
    const-string/jumbo v5, "points"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 956
    if-lez v0, :cond_127

    .line 957
    new-instance v5, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v6, "point"

    invoke-direct {v5, v6}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 958
    const-string/jumbo v6, "weeklytopup"

    iput-object v6, v5, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    .line 959
    iput v0, v5, Lcom/bzbs/bean/MessagePopup;->point_number:I

    .line 962
    iget v6, v5, Lcom/bzbs/bean/MessagePopup;->point_number:I

    iget-object v5, v5, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v6, v5, v7, v0}, Lcom/samsung/privilege/util/AnimationPointGift;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_127} :catch_34a

    .line 969
    :cond_127
    :goto_127
    :try_start_127
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 971
    const-string/jumbo v5, "badges"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 972
    const/4 v0, 0x0

    :goto_136
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_22c

    .line 973
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 974
    new-instance v7, Lcom/bzbs/bean/BadgeAlert;

    invoke-direct {v7, v6}, Lcom/bzbs/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 976
    new-instance v6, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v8, "badge"

    invoke-direct {v6, v8}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 977
    iput-object v7, v6, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 979
    iget-object v8, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_154} :catch_22b

    .line 983
    :try_start_154
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "dashboard:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e0

    .line 984
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_164} :catch_1f2

    .line 972
    :cond_164
    :goto_164
    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    .line 899
    :cond_167
    :try_start_167
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16f} :catch_171

    goto/16 :goto_8d

    .line 904
    :catch_171
    move-exception v0

    .line 905
    :try_start_172
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_17a} :catch_17c

    goto/16 :goto_8d

    .line 1047
    :catch_17c
    move-exception v0

    .line 1048
    const-string/jumbo v0, "Authentication with BuzzeBees Fail...\r\n{Invalid data format}..."

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 1050
    :goto_187
    return-void

    .line 902
    :cond_188
    :try_start_188
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_190} :catch_171

    goto/16 :goto_8d

    .line 921
    :catch_192
    move-exception v0

    .line 922
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

    .line 928
    :catch_1b4
    move-exception v0

    .line 929
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;J)Z

    goto/16 :goto_c7

    .line 936
    :catch_1be
    move-exception v0

    .line 937
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

    .line 985
    :cond_1e0
    :try_start_1e0
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "campaignId:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f5

    .line 986
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    goto/16 :goto_164

    .line 994
    :catch_1f2
    move-exception v6

    goto/16 :goto_164

    .line 987
    :cond_1f5
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "campaignbzbId:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_207

    .line 988
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    goto/16 :goto_164

    .line 989
    :cond_207
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "url:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_219

    .line 990
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    goto/16 :goto_164

    .line 991
    :cond_219
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "categoryId:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_164

    .line 992
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_229} :catch_1f2

    goto/16 :goto_164

    .line 998
    :catch_22b
    move-exception v0

    .line 1002
    :cond_22c
    :try_start_22c
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27d

    .line 1025
    :goto_235
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1027
    if-eqz v4, :cond_33d

    const-string/jumbo v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33d

    .line 1028
    new-instance v1, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v0, "message"

    invoke-direct {v1, v0}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1029
    iput-object v3, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 1030
    iput-object v4, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 1033
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v0, :cond_32e

    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32e

    .line 1034
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2043"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_305

    .line 1035
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_187

    .line 1005
    :cond_27d
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1006
    const-string/jumbo v1, "menu_buzzebees_visible"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1007
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Z)Z

    .line 1009
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "allow_use"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;Z)Z

    .line 1010
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "has_new_version"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Z)Z

    .line 1011
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "token_need_logout"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Z)Z

    .line 1012
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;Z)Z

    .line 1013
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "is_enable_beacon"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;Z)Z

    .line 1014
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "userlevel_show_otherpoint"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;J)Z
    :try_end_2f0
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_2f0} :catch_17c

    .line 1017
    :try_start_2f0
    const-string/jumbo v1, "show_mygift_on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1018
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_300
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_300} :catch_302

    goto/16 :goto_235

    .line 1020
    :catch_302
    move-exception v0

    goto/16 :goto_235

    .line 1036
    :cond_305
    :try_start_305
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2045"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31f

    .line 1037
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_187

    .line 1039
    :cond_31f
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_187

    .line 1042
    :cond_32e
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_187

    .line 1045
    :cond_33d
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_348
    .catch Ljava/lang/Exception; {:try_start_305 .. :try_end_348} :catch_17c

    goto/16 :goto_187

    .line 964
    :catch_34a
    move-exception v0

    goto/16 :goto_127
.end method
