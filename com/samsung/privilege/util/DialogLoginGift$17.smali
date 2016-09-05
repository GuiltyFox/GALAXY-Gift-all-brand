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
    .line 853
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
    .line 857
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 858
    const-string/jumbo v0, "token"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    const-string/jumbo v2, "version"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 860
    const-string/jumbo v3, "logon_message_id"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 861
    const-string/jumbo v4, "logon_message"

    invoke-static {v1, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 863
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Z)Z

    .line 864
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 865
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 867
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "locale"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 868
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "userId"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 870
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "isPremiumUser"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Z)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_164

    .line 873
    :try_start_61
    const-string/jumbo v0, "detail"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 874
    if-eqz v0, :cond_170

    .line 875
    const-string/jumbo v5, "ewallet_token"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_14f

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14f

    .line 877
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_81} :catch_159

    .line 888
    :goto_81
    :try_start_81
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "768830479847872"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 889
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, "1108"

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 897
    :cond_98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9f} :catch_164

    .line 900
    :try_start_9f
    const-string/jumbo v0, "sponsor_pages"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a8} :catch_17a

    .line 906
    :goto_a8
    :try_start_a8
    const-string/jumbo v0, "updated_points"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 907
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v6, "points"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_bb} :catch_19c

    .line 911
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
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_dc} :catch_164

    .line 914
    :try_start_dc
    const-string/jumbo v0, "user_rank"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 915
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v6, "rank"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ef} :catch_1a6

    .line 933
    :goto_ef
    :try_start_ef
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 935
    const-string/jumbo v5, "points"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 936
    if-lez v0, :cond_11b

    .line 937
    new-instance v5, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v6, "point"

    invoke-direct {v5, v6}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 938
    const-string/jumbo v6, "weeklytopup"

    iput-object v6, v5, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    .line 939
    iput v0, v5, Lcom/bzbs/bean/MessagePopup;->point_number:I

    .line 942
    iget v6, v5, Lcom/bzbs/bean/MessagePopup;->point_number:I

    iget-object v5, v5, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v6, v5, v7, v0}, Lcom/samsung/privilege/util/AnimationPointGift;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_11b} :catch_2cb

    .line 949
    :cond_11b
    :goto_11b
    :try_start_11b
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 951
    const-string/jumbo v5, "badges"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 952
    const/4 v0, 0x0

    :goto_12a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1c9

    .line 953
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 954
    new-instance v7, Lcom/bzbs/bean/BadgeAlert;

    invoke-direct {v7, v6}, Lcom/bzbs/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 956
    new-instance v6, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v8, "badge"

    invoke-direct {v6, v8}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 957
    iput-object v7, v6, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 960
    iget-object v6, v6, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v6, v7, v8}, Lcom/samsung/privilege/util/AnimationBadge;->a(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_14c} :catch_1c8

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    .line 879
    :cond_14f
    :try_start_14f
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_157} :catch_159

    goto/16 :goto_81

    .line 884
    :catch_159
    move-exception v0

    .line 885
    :try_start_15a
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_162} :catch_164

    goto/16 :goto_81

    .line 1010
    :catch_164
    move-exception v0

    .line 1011
    const-string/jumbo v0, "Authentication with BuzzeBees Fail...\r\n{Invalid data format}..."

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 1013
    :goto_16f
    return-void

    .line 882
    :cond_170
    :try_start_170
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_178} :catch_159

    goto/16 :goto_81

    .line 901
    :catch_17a
    move-exception v0

    .line 902
    :try_start_17b
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

    .line 908
    :catch_19c
    move-exception v0

    .line 909
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z

    goto/16 :goto_bb

    .line 916
    :catch_1a6
    move-exception v0

    .line 917
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

    goto/16 :goto_ef

    .line 962
    :catch_1c8
    move-exception v0

    .line 966
    :cond_1c9
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 988
    :goto_1d2
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 990
    if-eqz v4, :cond_2be

    const-string/jumbo v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2be

    .line 991
    new-instance v1, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v0, "message"

    invoke-direct {v1, v0}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 992
    iput-object v3, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 993
    iput-object v4, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 996
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v0, :cond_2af

    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2af

    .line 997
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2043"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_286

    .line 998
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_16f

    .line 969
    :cond_21a
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 970
    const-string/jumbo v1, "menu_buzzebees_visible"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 971
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Z)Z

    .line 973
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "allow_use"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Z)Z

    .line 974
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "has_new_version"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;Z)Z

    .line 975
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "token_need_logout"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Z)Z

    .line 977
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    const-string/jumbo v2, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Z)Z
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_271} :catch_164

    .line 980
    :try_start_271
    const-string/jumbo v1, "show_mygift_on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_281} :catch_283

    goto/16 :goto_1d2

    .line 983
    :catch_283
    move-exception v0

    goto/16 :goto_1d2

    .line 999
    :cond_286
    :try_start_286
    iget-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2045"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a0

    .line 1000
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_16f

    .line 1002
    :cond_2a0
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_16f

    .line 1005
    :cond_2af
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_16f

    .line 1008
    :cond_2be
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_2c9} :catch_164

    goto/16 :goto_16f

    .line 944
    :catch_2cb
    move-exception v0

    goto/16 :goto_11b
.end method
