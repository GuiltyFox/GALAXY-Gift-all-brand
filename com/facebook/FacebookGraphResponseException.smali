.class public Lcom/facebook/FacebookGraphResponseException;
.super Lcom/facebook/FacebookException;
.source "FacebookGraphResponseException.java"


# instance fields
.field private final graphResponse:Lcom/facebook/GraphResponse;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    .line 39
    return-void
.end method


# virtual methods
.method public final getGraphResponse()Lcom/facebook/GraphResponse;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 52
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{FacebookGraphResponseException: "

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/facebook/FacebookGraphResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_25

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_25
    if-eqz v0, :cond_69

    .line 60
    const-string/jumbo v2, "httpResponseCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getRequestStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", facebookErrorCode: "

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", facebookErrorType: "

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", message: "

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_6e
    const/4 v0, 0x0

    goto :goto_a
.end method
