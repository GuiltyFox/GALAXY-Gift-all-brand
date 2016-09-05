.class public Lcom/facebook/share/internal/GameRequestValidation;
.super Ljava/lang/Object;
.source "GameRequestValidation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Lcom/facebook/share/model/GameRequestContent;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "message"

    invoke-static {v0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    move v0, v1

    .line 38
    :goto_13
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    if-eq v3, v4, :cond_23

    .line 39
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    if-ne v3, v4, :cond_32

    :cond_23
    move v3, v1

    :goto_24
    xor-int/2addr v0, v3

    if-eqz v0, :cond_34

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Object id should be provided if and only if action type is send or askfor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move v0, v2

    .line 37
    goto :goto_13

    :cond_32
    move v3, v2

    .line 39
    goto :goto_24

    .line 46
    :cond_34
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    move v2, v1

    .line 49
    :cond_3b
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 52
    :cond_43
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 55
    :cond_4b
    if-le v2, v1, :cond_56

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameters to, filters and suggestions are mutually exclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_56
    return-void
.end method
