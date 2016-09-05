.class Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
.super Ljava/lang/Object;
.source "LoginButton.java"


# instance fields
.field private authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    .line 127
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/LoginAuthorizationType;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearPermissions()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 167
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    .line 168
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 131
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 172
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->READ:Lcom/facebook/internal/LoginAuthorizationType;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LoginAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_13
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Permissions for publish actions cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_22
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 158
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    .line 159
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LoginAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_13
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 144
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->READ:Lcom/facebook/internal/LoginAuthorizationType;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    .line 145
    return-void
.end method
