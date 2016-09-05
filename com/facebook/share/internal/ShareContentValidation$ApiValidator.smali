.class Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;
.super Lcom/facebook/share/internal/ShareContentValidation$Validator;
.source "ShareContentValidation.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .registers 2

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/facebook/share/model/SharePhoto;)V
    .registers 2

    .prologue
    .line 315
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$400(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 316
    return-void
.end method
