.class Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;
.super Lcom/facebook/share/internal/ShareContentValidation$Validator;
.source "ShareContentValidation.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .registers 2

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/facebook/share/model/SharePhoto;)V
    .registers 2

    .prologue
    .line 308
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$300(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 309
    return-void
.end method

.method public validate(Lcom/facebook/share/model/SharePhotoContent;)V
    .registers 4

    .prologue
    .line 298
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Cannot share SharePhotoContent via web sharing dialogs"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Lcom/facebook/share/model/ShareVideoContent;)V
    .registers 4

    .prologue
    .line 303
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Cannot share ShareVideoContent via web sharing dialogs"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
