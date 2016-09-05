.class Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final accessTokenString:Ljava/lang/String;

.field private final applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/AccessToken;)V
    .registers 4

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    :cond_a
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->accessTokenString:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    .line 208
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 250
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->accessTokenString:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/AppEventsLogger$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 226
    instance-of v1, p1, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    if-nez v1, :cond_6

    .line 231
    :cond_5
    :goto_5
    return v0

    .line 229
    :cond_6
    check-cast p1, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    .line 230
    iget-object v1, p1, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->accessTokenString:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->accessTokenString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    .line 231
    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method getAccessTokenString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->accessTokenString:Ljava/lang/String;

    return-object v0
.end method

.method getApplicationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->accessTokenString:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 221
    :goto_a
    xor-int/2addr v0, v1

    return v0

    .line 220
    :cond_c
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->accessTokenString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_13
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a
.end method
