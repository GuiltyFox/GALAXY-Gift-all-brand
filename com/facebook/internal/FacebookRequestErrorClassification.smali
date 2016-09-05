.class public final Lcom/facebook/internal/FacebookRequestErrorClassification;
.super Ljava/lang/Object;
.source "FacebookRequestErrorClassification.java"


# static fields
.field public static final EC_APP_TOO_MANY_CALLS:I = 0x4

.field public static final EC_INVALID_SESSION:I = 0x66

.field public static final EC_INVALID_TOKEN:I = 0xbe

.field public static final EC_RATE:I = 0x9

.field public static final EC_SERVICE_UNAVAILABLE:I = 0x2

.field public static final EC_TOO_MANY_USER_ACTION_CALLS:I = 0x155

.field public static final EC_USER_TOO_MANY_CALLS:I = 0x11

.field public static final KEY_LOGIN_RECOVERABLE:Ljava/lang/String; = "login_recoverable"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_OTHER:Ljava/lang/String; = "other"

.field public static final KEY_RECOVERY_MESSAGE:Ljava/lang/String; = "recovery_message"

.field public static final KEY_TRANSIENT:Ljava/lang/String; = "transient"

.field private static defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;


# instance fields
.field private final loginRecoverableErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loginRecoverableRecoveryMessage:Ljava/lang/String;

.field private final otherErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final otherRecoveryMessage:Ljava/lang/String;

.field private final transientErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transientRecoveryMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    .line 70
    iput-object p2, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    .line 71
    iput-object p3, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    .line 72
    iput-object p4, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherRecoveryMessage:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientRecoveryMessage:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableRecoveryMessage:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 196
    if-nez p0, :cond_4

    .line 226
    :goto_3
    return-object v7

    .line 206
    :cond_4
    const/4 v0, 0x0

    move-object v6, v7

    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    move-object v1, v7

    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_62

    .line 207
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 208
    if-nez v8, :cond_1a

    .line 206
    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 211
    :cond_1a
    const-string/jumbo v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 212
    if-eqz v9, :cond_17

    .line 215
    const-string/jumbo v10, "other"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_38

    .line 216
    const-string/jumbo v1, "recovery_message"

    invoke-virtual {v8, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v8}, Lcom/facebook/internal/FacebookRequestErrorClassification;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    goto :goto_17

    .line 218
    :cond_38
    const-string/jumbo v10, "transient"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 219
    const-string/jumbo v2, "recovery_message"

    invoke-virtual {v8, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-static {v8}, Lcom/facebook/internal/FacebookRequestErrorClassification;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    goto :goto_17

    .line 221
    :cond_4d
    const-string/jumbo v10, "login_recoverable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 222
    const-string/jumbo v3, "recovery_message"

    invoke-virtual {v8, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    invoke-static {v8}, Lcom/facebook/internal/FacebookRequestErrorClassification;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    goto :goto_17

    .line 226
    :cond_62
    new-instance v0, Lcom/facebook/internal/FacebookRequestErrorClassification;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/FacebookRequestErrorClassification;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_3
.end method

.method public static declared-synchronized getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 2

    .prologue
    .line 134
    const-class v1, Lcom/facebook/internal/FacebookRequestErrorClassification;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification;->defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;

    if-nez v0, :cond_d

    .line 135
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassificationImpl()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification;->defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;

    .line 137
    :cond_d
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification;->defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getDefaultErrorClassificationImpl()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 141
    new-instance v2, Lcom/facebook/internal/FacebookRequestErrorClassification$1;

    invoke-direct {v2}, Lcom/facebook/internal/FacebookRequestErrorClassification$1;-><init>()V

    .line 149
    new-instance v3, Lcom/facebook/internal/FacebookRequestErrorClassification$2;

    invoke-direct {v3}, Lcom/facebook/internal/FacebookRequestErrorClassification$2;-><init>()V

    .line 154
    new-instance v0, Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/FacebookRequestErrorClassification;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 164
    const-string/jumbo v0, "items"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 165
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 192
    :goto_f
    return-object v4

    .line 169
    :cond_10
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 170
    :goto_16
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_62

    .line 171
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 172
    if-nez v2, :cond_25

    .line 170
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 175
    :cond_25
    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 176
    if-eqz v7, :cond_22

    .line 180
    const-string/jumbo v3, "subcodes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 181
    if-eqz v8, :cond_64

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_64

    .line 182
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v2, v1

    .line 183
    :goto_43
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_59

    .line 184
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    .line 185
    if-eqz v9, :cond_56

    .line 186
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_59
    move-object v2, v3

    .line 190
    :goto_5a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_62
    move-object v4, v5

    .line 192
    goto :goto_f

    :cond_64
    move-object v2, v4

    goto :goto_5a
.end method


# virtual methods
.method public classify(IIZ)Lcom/facebook/FacebookRequestError$Category;
    .registers 6

    .prologue
    .line 106
    if-eqz p3, :cond_5

    .line 107
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/facebook/FacebookRequestError$Category;

    .line 130
    :goto_4
    return-object v0

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 111
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 112
    if-eqz v0, :cond_2d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 113
    :cond_2d
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_4

    .line 117
    :cond_30
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 118
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 119
    if-eqz v0, :cond_58

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 120
    :cond_58
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->LOGIN_RECOVERABLE:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_4

    .line 124
    :cond_5b
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 125
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 126
    if-eqz v0, :cond_83

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 127
    :cond_83
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/facebook/FacebookRequestError$Category;

    goto/16 :goto_4

    .line 130
    :cond_87
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    goto/16 :goto_4
.end method

.method public getLoginRecoverableErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    return-object v0
.end method

.method public getOtherErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    return-object v0
.end method

.method public getRecoveryMessage(Lcom/facebook/FacebookRequestError$Category;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 90
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification$3;->$SwitchMap$com$facebook$FacebookRequestError$Category:[I

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 98
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 92
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherRecoveryMessage:Ljava/lang/String;

    goto :goto_c

    .line 94
    :pswitch_10
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableRecoveryMessage:Ljava/lang/String;

    goto :goto_c

    .line 96
    :pswitch_13
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientRecoveryMessage:Ljava/lang/String;

    goto :goto_c

    .line 90
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public getTransientErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    return-object v0
.end method
