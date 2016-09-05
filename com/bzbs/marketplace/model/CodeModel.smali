.class public Lcom/bzbs/marketplace/model/CodeModel;
.super Ljava/lang/Object;
.source "CodeModel.java"


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CodeModel;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CodeModel;->code:Ljava/lang/String;

    .line 15
    return-void
.end method
