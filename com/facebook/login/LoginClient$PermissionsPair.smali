.class Lcom/facebook/login/LoginClient$PermissionsPair;
.super Ljava/lang/Object;
.source "LoginClient.java"


# instance fields
.field declinedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field grantedPermissions:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object p1, p0, Lcom/facebook/login/LoginClient$PermissionsPair;->grantedPermissions:Ljava/util/List;

    .line 644
    iput-object p2, p0, Lcom/facebook/login/LoginClient$PermissionsPair;->declinedPermissions:Ljava/util/List;

    .line 645
    return-void
.end method


# virtual methods
.method public getDeclinedPermissions()Ljava/util/List;
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
    .line 652
    iget-object v0, p0, Lcom/facebook/login/LoginClient$PermissionsPair;->declinedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getGrantedPermissions()Ljava/util/List;
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
    .line 648
    iget-object v0, p0, Lcom/facebook/login/LoginClient$PermissionsPair;->grantedPermissions:Ljava/util/List;

    return-object v0
.end method
