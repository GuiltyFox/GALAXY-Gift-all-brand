.class public Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;
.super Ljava/lang/Object;
.source "RESTLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/newconcepts/utils/RESTLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RESTResponse"
.end annotation


# instance fields
.field private mCode:I

.field private mData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;->mData:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;->mCode:I

    .line 56
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;->mCode:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;->mData:Ljava/lang/String;

    return-object v0
.end method
