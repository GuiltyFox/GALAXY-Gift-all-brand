.class public Lcom/bzbs/marketplace/model/SettingModel;
.super Ljava/lang/Object;
.source "SettingModel.java"


# instance fields
.field private fragment:Landroid/support/v4/app/Fragment;

.field private isIconNavi:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/support/v4/app/Fragment;)V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p3, p0, Lcom/bzbs/marketplace/model/SettingModel;->fragment:Landroid/support/v4/app/Fragment;

    .line 15
    iput-boolean p2, p0, Lcom/bzbs/marketplace/model/SettingModel;->isIconNavi:Z

    .line 16
    iput-object p1, p0, Lcom/bzbs/marketplace/model/SettingModel;->title:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/marketplace/model/SettingModel;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bzbs/marketplace/model/SettingModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isIconNavi()Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/SettingModel;->isIconNavi:Z

    return v0
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bzbs/marketplace/model/SettingModel;->fragment:Landroid/support/v4/app/Fragment;

    .line 41
    return-void
.end method

.method public setIsIconNavi(Z)V
    .registers 2

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/SettingModel;->isIconNavi:Z

    .line 33
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/bzbs/marketplace/model/SettingModel;->title:Ljava/lang/String;

    .line 25
    return-void
.end method
