.class public Lcom/bzbs/bean/StampSticker;
.super Ljava/lang/Object;
.source "StampSticker.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public enable:Z

.field public index_stamp:I

.field public stampAgency:Lcom/bzbs/bean/StampAgency;

.field public stampCampaign:Lcom/bzbs/bean/StampCampaign;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/bzbs/bean/StampAgency;ZI)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bzbs/bean/StampSticker;->stampAgency:Lcom/bzbs/bean/StampAgency;

    .line 24
    iput-boolean p2, p0, Lcom/bzbs/bean/StampSticker;->enable:Z

    .line 25
    iput p3, p0, Lcom/bzbs/bean/StampSticker;->index_stamp:I

    .line 26
    return-void
.end method

.method public static GetArrayList(Lcom/bzbs/bean/StampAgency;III)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bzbs/bean/StampAgency;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampSticker;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :goto_6
    if-gt v0, p2, :cond_25

    .line 32
    mul-int/lit8 v2, p1, 0xa

    add-int/2addr v2, v0

    .line 33
    if-gt v0, p3, :cond_19

    .line 34
    :try_start_d
    new-instance v3, Lcom/bzbs/bean/StampSticker;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v2}, Lcom/bzbs/bean/StampSticker;-><init>(Lcom/bzbs/bean/StampAgency;ZI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 36
    :cond_19
    new-instance v3, Lcom/bzbs/bean/StampSticker;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v2}, Lcom/bzbs/bean/StampSticker;-><init>(Lcom/bzbs/bean/StampAgency;ZI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_16

    .line 38
    :catch_23
    move-exception v2

    goto :goto_16

    .line 42
    :cond_25
    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 15
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
