.class public Lcom/facebook/login/LoginClient$Request;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/LoginClient$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final authId:Ljava/lang/String;

.field private final defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private isRerequest:Z

.field private final loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 518
    new-instance v0, Lcom/facebook/login/LoginClient$Request$1;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$Request$1;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-boolean v2, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_44

    invoke-static {v0}, Lcom/facebook/login/LoginBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 495
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_2c

    invoke-static {v0}, Lcom/facebook/login/DefaultAudience;->valueOf(Ljava/lang/String;)Lcom/facebook/login/DefaultAudience;

    move-result-object v1

    :cond_2c
    iput-object v1, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    :goto_41
    iput-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 501
    return-void

    :cond_44
    move-object v0, v1

    .line 492
    goto :goto_11

    :cond_46
    move v0, v2

    .line 500
    goto :goto_41
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/login/LoginClient$1;)V
    .registers 3

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/login/LoginBehavior;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 441
    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 442
    if-eqz p2, :cond_13

    :goto_a
    iput-object p2, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    .line 443
    iput-object p3, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 444
    iput-object p4, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    .line 445
    iput-object p5, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    .line 446
    return-void

    .line 442
    :cond_13
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method getApplicationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method getAuthId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    return-object v0
.end method

.method getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method getPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    return-object v0
.end method

.method hasPublishPermission()Z
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    invoke-static {v0}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 484
    const/4 v0, 0x1

    .line 487
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method isRerequest()Z
    .registers 2

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    return v0
.end method

.method setPermissions(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    const-string/jumbo v0, "permissions"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    .line 455
    return-void
.end method

.method setRerequest(Z)V
    .registers 2

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 479
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 512
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    invoke-virtual {v0}, Lcom/facebook/login/DefaultAudience;->name()Ljava/lang/String;

    move-result-object v1

    :cond_22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    :goto_34
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 516
    return-void

    :cond_39
    move-object v0, v1

    .line 510
    goto :goto_b

    .line 515
    :cond_3b
    const/4 v0, 0x0

    goto :goto_34
.end method
