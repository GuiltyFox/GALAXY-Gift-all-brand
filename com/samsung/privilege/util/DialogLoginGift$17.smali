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

    invoke-static {v5, v6}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Z)Z

    .line 883
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 884
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 886
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "locale"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 887
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "userId"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 889
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "isPremiumUser"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Z)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_170

    .line 892
    :try_start_61
    const-string/jumbo v0, "detail"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_17c

    .line 894
    const-string/jumbo v5, "ewallet_token"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    if-eqz v0, :cond_15b

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15b

    .line 896
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_81} :catch_165

    .line 907
    :goto_81
    :try_start_81
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "768830479847872"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 908
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "1108"

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 916
    :cond_98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9f} :catch_170

    .line 919
    :try_start_9f
    const-string/jumbo v0, "sponsor_pages"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a8} :catch_186

    .line 925
    :goto_a8
    :try_start_a8
    const-string/jumbo v0, "updated_points"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 926
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v6, "points"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_bb} :catch_1a8

    .line 930
    :goto_bb
    :try_start_bb
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updated_points="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_dc} :catch_170

    .line 933
    :try_start_dc
    const-string/jumbo v0, "user_rank"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 934
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v6, "rank"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ef} :catch_1b2

    .line 952
    :goto_ef
    :try_start_ef
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 954
    const-string/jumbo v5, "points"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 955
    if-lez v0, :cond_11b

    .line 956
    new-instance v5, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v6, "point"

    invoke-direct {v5, v6}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 957
    const-string/jumbo v6, "weeklytopup"

    iput-object v6, v5, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    .line 958
    iput v0, v5, Lcom/bzbs/bean/MessagePopup;->point_number:I

    .line 961
    iget v6, v5, Lcom/bzbs/bean/MessagePopup;->point_number:I

    iget-object v5, v5, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v6, v5, v7, v0}, Lcom/samsung/privilege/util/AnimationPointGift;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_11b} :catch_332

    .line 968
    :cond_11b
    :goto_11b
    :try_start_11b
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 970
    const-string/jumbo v5, "badges"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 971
    const/4 v0, 0x0

    :goto_12a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_220

    .line 972
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 973
    new-instance v7, Lcom/bzbs/bean/BadgeAlert;

    invoke-direct {v7, v6}, Lcom/bzbs/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 975
    new-instance v6, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v8, "badge"

    invoke-direct {v6, v8}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 976
    iput-object v7, v6, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 978
    iget-object v8, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_148} :catch_21f

    .line 982
    :try_start_148
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "dashboard:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d4

    .line 983
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_158} :catch_1e6

    .line 971
    :cond_158
    :goto_158
    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    .line 898
    :cond_15b
    :try_start_15b
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_163} :catch_165

    goto/16 :goto_81

    .line 903
    :catch_165
    move-exception v0

    .line 904
    :try_start_166
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_16e} :catch_170

    goto/16 :goto_81

    .line 1045
    :catch_170
    move-exception v0

    .line 1046
    const-string/jumbo v0, "Authentication with BuzzeBees Fail...\r\n{Invalid data format}..."

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 1048
    :goto_17b
    return-void

    .line 901
    :cond_17c
    :try_start_17c
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_184} :catch_165

    goto/16 :goto_81

    .line 920
    :catch_186
    move-exception v0

    .line 921
    :try_start_187
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

    goto/16 :goto_a8

    .line 927
    :catch_1a8
    move-exception v0

    .line 928
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z

    goto/16 :goto_bb

    .line 935
    :catch_1b2
    move-exception v0

    .line 936
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
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1d2} :catch_170

    goto/16 :goto_ef

    .line 984
    :cond_1d4
    :try_start_1d4
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "campaignId:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e9

    .line 985
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    goto/16 :goto_158

    .line 993
    :catch_1e6
    move-exception v6

    goto/16 :goto_158

    .line 986
    :cond_1e9
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "campaignbzbId:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1fb

    .line 987
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    goto/16 :goto_158

    .line 988
    :cond_1fb
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "url:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20d

    .line 989
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    goto/16 :goto_158

    .line 990
    :cond_20d
    iget-object v6, v7, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    const-string/jumbo v8, "categoryId:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_158

    .line 991
    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_21d} :catch_1e6

    goto/16 :goto_158

    .line 997
    :catch_21f
    move-exception v0

    .line 1001
    :cond_220
    :try_start_220
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_271

    .line 1023
    :goto_229
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1025
    if-eqz v4, :cond_325

    const-string/jumbo v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_325

    .line 1026
    new-instance v1, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v0, "message"

    invoke-direct {v1, v0}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1027
    iput-object v3, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 1028
    iput-object v4, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 1031
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v0, :cond_316

    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_316

    .line 1032
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2043"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ed

    .line 1033
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_17b

    .line 1004
    :cond_271
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1005
    const-string/jumbo v1, "menu_buzzebees_visible"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1006
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Z)Z

    .line 1008
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "allow_use"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Z)Z

    .line 1009
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "has_new_version"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;Z)Z

    .line 1010
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "token_need_logout"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Z)Z

    .line 1011
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Z)Z

    .line 1012
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "is_enable_beacon"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;Z)Z
    :try_end_2d8
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_2d8} :catch_170

    .line 1015
    :try_start_2d8
    const-string/jumbo v1, "show_mygift_on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1016
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2d8 .. :try_end_2e8} :catch_2ea

    goto/16 :goto_229

    .line 1018
    :catch_2ea
    move-exception v0

    goto/16 :goto_229

    .line 1034
    :cond_2ed
    :try_start_2ed
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2045"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_307

    .line 1035
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_17b

    .line 1037
    :cond_307
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_17b

    .line 1040
    :cond_316
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_17b

    .line 1043
    :cond_325
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_330
    .catch Ljava/lang/Exception; {:try_start_2ed .. :try_end_330} :catch_170

    goto/16 :goto_17b

    .line 963
    :catch_332
    move-exception v0

    goto/16 :goto_11b
.end method
