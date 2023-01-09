
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	91813103          	ld	sp,-1768(sp) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x58>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	488050ef          	jal	ra,800054a4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	340030ef          	jal	ra,800043c8 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001218:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000121c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001220:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001224:	0085b083          	ld	ra,8(a1)

    ret
    80001228:	00008067          	ret

000000008000122c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000122c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001230:	00853083          	ld	ra,8(a0)

    80001234:	00008067          	ret

0000000080001238 <_Z22thread_dispatch_kernelv>:
//
#include "../../h/syscall_c_kernel.hpp"


void thread_dispatch_kernel()
{
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001244:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001264:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000126c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001270:	0ff57513          	andi	a0,a0,255
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z18thread_exit_kernelv>:


int thread_exit_kernel()
{
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000128c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001294:	00050513          	mv	a0,a0
    return result;
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    800012b4:	00054783          	lbu	a5,0(a0)
    800012b8:	00078a63          	beqz	a5,800012cc <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    800012bc:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    800012c0:	00150513          	addi	a0,a0,1
    800012c4:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    800012c8:	fedff06f          	j	800012b4 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    800012cc:	00f58023          	sb	a5,0(a1)
}
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    800012dc:	fd010113          	addi	sp,sp,-48
    800012e0:	02113423          	sd	ra,40(sp)
    800012e4:	02813023          	sd	s0,32(sp)
    800012e8:	00913c23          	sd	s1,24(sp)
    800012ec:	01213823          	sd	s2,16(sp)
    800012f0:	01313423          	sd	s3,8(sp)
    800012f4:	01413023          	sd	s4,0(sp)
    800012f8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012fc:	00053783          	ld	a5,0(a0)
    80001300:	04078263          	beqz	a5,80001344 <_Z17destroy_slab_listPP6slab_s+0x68>
    80001304:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    80001308:	0107b783          	ld	a5,16(a5)
    8000130c:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    80001310:	00000913          	li	s2,0
    while(*slab != nullptr)
    80001314:	0004b583          	ld	a1,0(s1)
    80001318:	02058863          	beqz	a1,80001348 <_Z17destroy_slab_listPP6slab_s+0x6c>
    {
        slab_t* nextSlab = (*slab)->next;
    8000131c:	0085ba03          	ld	s4,8(a1)
        buddy_free(slabAllocator->buddy, *slab, sz);
    80001320:	00098613          	mv	a2,s3
    80001324:	00007797          	auipc	a5,0x7
    80001328:	69c7b783          	ld	a5,1692(a5) # 800089c0 <_ZL13slabAllocator>
    8000132c:	0007b503          	ld	a0,0(a5)
    80001330:	00002097          	auipc	ra,0x2
    80001334:	b08080e7          	jalr	-1272(ra) # 80002e38 <_Z10buddy_freeP14buddyAllocatorPvm>
        *slab = nextSlab;
    80001338:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    8000133c:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    80001340:	fd5ff06f          	j	80001314 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    80001344:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    80001348:	00090513          	mv	a0,s2
    8000134c:	02813083          	ld	ra,40(sp)
    80001350:	02013403          	ld	s0,32(sp)
    80001354:	01813483          	ld	s1,24(sp)
    80001358:	01013903          	ld	s2,16(sp)
    8000135c:	00813983          	ld	s3,8(sp)
    80001360:	00013a03          	ld	s4,0(sp)
    80001364:	03010113          	addi	sp,sp,48
    80001368:	00008067          	ret

000000008000136c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    8000136c:	fc010113          	addi	sp,sp,-64
    80001370:	02113c23          	sd	ra,56(sp)
    80001374:	02813823          	sd	s0,48(sp)
    80001378:	02913423          	sd	s1,40(sp)
    8000137c:	03213023          	sd	s2,32(sp)
    80001380:	01313c23          	sd	s3,24(sp)
    80001384:	01413823          	sd	s4,16(sp)
    80001388:	01513423          	sd	s5,8(sp)
    8000138c:	04010413          	addi	s0,sp,64
    80001390:	00050493          	mv	s1,a0
    80001394:	00058513          	mv	a0,a1
    80001398:	00060a93          	mv	s5,a2
    8000139c:	00068a13          	mv	s4,a3
    800013a0:	00070993          	mv	s3,a4
    800013a4:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    800013a8:	00048593          	mv	a1,s1
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	efc080e7          	jalr	-260(ra) # 800012a8 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    800013b4:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    800013b8:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    800013bc:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    800013c0:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    800013c4:	0404b423          	sd	zero,72(s1)
    800013c8:	0404b823          	sd	zero,80(s1)
    800013cc:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    800013d0:	0604ac23          	sw	zero,120(s1)
}
    800013d4:	03813083          	ld	ra,56(sp)
    800013d8:	03013403          	ld	s0,48(sp)
    800013dc:	02813483          	ld	s1,40(sp)
    800013e0:	02013903          	ld	s2,32(sp)
    800013e4:	01813983          	ld	s3,24(sp)
    800013e8:	01013a03          	ld	s4,16(sp)
    800013ec:	00813a83          	ld	s5,8(sp)
    800013f0:	04010113          	addi	sp,sp,64
    800013f4:	00008067          	ret

00000000800013f8 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013f8:	fe010113          	addi	sp,sp,-32
    800013fc:	00113c23          	sd	ra,24(sp)
    80001400:	00813823          	sd	s0,16(sp)
    80001404:	00913423          	sd	s1,8(sp)
    80001408:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    8000140c:	0e050493          	addi	s1,a0,224

    slabAllocatorLocal->buddy = buddy;
    80001410:	0ea53023          	sd	a0,224(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001414:	00000793          	li	a5,0
    80001418:	0140006f          	j	8000142c <_Z19slab_allocator_initP14buddyAllocator+0x34>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    8000141c:	00379713          	slli	a4,a5,0x3
    80001420:	00e50733          	add	a4,a0,a4
    80001424:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001428:	00178793          	addi	a5,a5,1
    8000142c:	00c00713          	li	a4,12
    80001430:	fef776e3          	bgeu	a4,a5,8000141c <_Z19slab_allocator_initP14buddyAllocator+0x24>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    80001434:	00000793          	li	a5,0
    80001438:	00000713          	li	a4,0
    8000143c:	08000693          	li	a3,128
    80001440:	00200613          	li	a2,2
    80001444:	00007597          	auipc	a1,0x7
    80001448:	bdc58593          	addi	a1,a1,-1060 # 80008020 <CONSOLE_STATUS+0x10>
    8000144c:	15050513          	addi	a0,a0,336
    80001450:	00000097          	auipc	ra,0x0
    80001454:	f1c080e7          	jalr	-228(ra) # 8000136c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001458:	00048513          	mv	a0,s1
    8000145c:	01813083          	ld	ra,24(sp)
    80001460:	01013403          	ld	s0,16(sp)
    80001464:	00813483          	ld	s1,8(sp)
    80001468:	02010113          	addi	sp,sp,32
    8000146c:	00008067          	ret

0000000080001470 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000147c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001480:	01d7d79b          	srliw	a5,a5,0x1d
    80001484:	00b785bb          	addw	a1,a5,a1
    80001488:	4035d71b          	sraiw	a4,a1,0x3
    8000148c:	00e50533          	add	a0,a0,a4
    80001490:	02854503          	lbu	a0,40(a0)
    80001494:	0075f593          	andi	a1,a1,7
    80001498:	40f585bb          	subw	a1,a1,a5
    8000149c:	40b5553b          	sraw	a0,a0,a1
}
    800014a0:	00157513          	andi	a0,a0,1
    800014a4:	00813403          	ld	s0,8(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00813423          	sd	s0,8(sp)
    800014b8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800014bc:	41f5d79b          	sraiw	a5,a1,0x1f
    800014c0:	01d7d79b          	srliw	a5,a5,0x1d
    800014c4:	00b785bb          	addw	a1,a5,a1
    800014c8:	4035d71b          	sraiw	a4,a1,0x3
    800014cc:	00e50533          	add	a0,a0,a4
    800014d0:	02850703          	lb	a4,40(a0)
    800014d4:	0075f593          	andi	a1,a1,7
    800014d8:	40f585bb          	subw	a1,a1,a5
    800014dc:	00100793          	li	a5,1
    800014e0:	00b795bb          	sllw	a1,a5,a1
    800014e4:	00b765b3          	or	a1,a4,a1
    800014e8:	02b50423          	sb	a1,40(a0)
}
    800014ec:	00813403          	ld	s0,8(sp)
    800014f0:	01010113          	addi	sp,sp,16
    800014f4:	00008067          	ret

00000000800014f8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014f8:	fd010113          	addi	sp,sp,-48
    800014fc:	02113423          	sd	ra,40(sp)
    80001500:	02813023          	sd	s0,32(sp)
    80001504:	00913c23          	sd	s1,24(sp)
    80001508:	01213823          	sd	s2,16(sp)
    8000150c:	01313423          	sd	s3,8(sp)
    80001510:	03010413          	addi	s0,sp,48
    80001514:	00050913          	mv	s2,a0
    if(slab == nullptr)
    80001518:	08050863          	beqz	a0,800015a8 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000151c:	00000493          	li	s1,0
    80001520:	01893783          	ld	a5,24(s2)
    80001524:	02f4fe63          	bgeu	s1,a5,80001560 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    80001528:	0004899b          	sext.w	s3,s1
    8000152c:	00098593          	mv	a1,s3
    80001530:	00090513          	mv	a0,s2
    80001534:	00000097          	auipc	ra,0x0
    80001538:	f3c080e7          	jalr	-196(ra) # 80001470 <_Z13checkSetIndexP6slab_si>
    8000153c:	00050663          	beqz	a0,80001548 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001540:	00148493          	addi	s1,s1,1
    80001544:	fddff06f          	j	80001520 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001548:	01093783          	ld	a5,16(s2)
    8000154c:	0607b783          	ld	a5,96(a5)
    80001550:	029784b3          	mul	s1,a5,s1
    80001554:	009904b3          	add	s1,s2,s1
    80001558:	42848493          	addi	s1,s1,1064
            index = i;
            break;
    8000155c:	00c0006f          	j	80001568 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001560:	00000493          	li	s1,0
    int index = -1;
    80001564:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001568:	02048063          	beqz	s1,80001588 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000156c:	00098593          	mv	a1,s3
    80001570:	00090513          	mv	a0,s2
    80001574:	00000097          	auipc	ra,0x0
    80001578:	f3c080e7          	jalr	-196(ra) # 800014b0 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000157c:	02093783          	ld	a5,32(s2)
    80001580:	00178793          	addi	a5,a5,1
    80001584:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001588:	00048513          	mv	a0,s1
    8000158c:	02813083          	ld	ra,40(sp)
    80001590:	02013403          	ld	s0,32(sp)
    80001594:	01813483          	ld	s1,24(sp)
    80001598:	01013903          	ld	s2,16(sp)
    8000159c:	00813983          	ld	s3,8(sp)
    800015a0:	03010113          	addi	sp,sp,48
    800015a4:	00008067          	ret
        return nullptr;
    800015a8:	00050493          	mv	s1,a0
    800015ac:	fddff06f          	j	80001588 <_Z14allocateObjectP6slab_s+0x90>

00000000800015b0 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800015b0:	ff010113          	addi	sp,sp,-16
    800015b4:	00813423          	sd	s0,8(sp)
    800015b8:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800015bc:	02053783          	ld	a5,32(a0)
    800015c0:	01853503          	ld	a0,24(a0)
    800015c4:	40f50533          	sub	a0,a0,a5
}
    800015c8:	00153513          	seqz	a0,a0
    800015cc:	00813403          	ld	s0,8(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00813423          	sd	s0,8(sp)
    800015e0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    800015e4:	02053503          	ld	a0,32(a0)
}
    800015e8:	00153513          	seqz	a0,a0
    800015ec:	00813403          	ld	s0,8(sp)
    800015f0:	01010113          	addi	sp,sp,16
    800015f4:	00008067          	ret

00000000800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015f8:	ff010113          	addi	sp,sp,-16
    800015fc:	00813423          	sd	s0,8(sp)
    80001600:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    80001604:	00050e63          	beqz	a0,80001620 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    80001608:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    8000160c:	0005b783          	ld	a5,0(a1)
    80001610:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001614:	00078463          	beqz	a5,8000161c <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    80001618:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    8000161c:	00a5b023          	sd	a0,0(a1)
}
    80001620:	00813403          	ld	s0,8(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    80001638:	00053783          	ld	a5,0(a0)
    8000163c:	02078663          	beqz	a5,80001668 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001640:	00853703          	ld	a4,8(a0)
    80001644:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    80001648:	00070663          	beqz	a4,80001654 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    8000164c:	00053783          	ld	a5,0(a0)
    80001650:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001654:	00053023          	sd	zero,0(a0)
    80001658:	00053423          	sd	zero,8(a0)
    }
}
    8000165c:	00813403          	ld	s0,8(sp)
    80001660:	01010113          	addi	sp,sp,16
    80001664:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001668:	00853783          	ld	a5,8(a0)
    8000166c:	00078463          	beqz	a5,80001674 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001670:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001674:	00853783          	ld	a5,8(a0)
    80001678:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000167c:	00053023          	sd	zero,0(a0)
    80001680:	00053423          	sd	zero,8(a0)
    80001684:	fd9ff06f          	j	8000165c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001688 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001688:	fe010113          	addi	sp,sp,-32
    8000168c:	00113c23          	sd	ra,24(sp)
    80001690:	00813823          	sd	s0,16(sp)
    80001694:	00913423          	sd	s1,8(sp)
    80001698:	01213023          	sd	s2,0(sp)
    8000169c:	02010413          	addi	s0,sp,32
    800016a0:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    800016a4:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    800016a8:	05050593          	addi	a1,a0,80
    800016ac:	00090513          	mv	a0,s2
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	f7c080e7          	jalr	-132(ra) # 8000162c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800016b8:	04848593          	addi	a1,s1,72
    800016bc:	00090513          	mv	a0,s2
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	f38080e7          	jalr	-200(ra) # 800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016c8:	01813083          	ld	ra,24(sp)
    800016cc:	01013403          	ld	s0,16(sp)
    800016d0:	00813483          	ld	s1,8(sp)
    800016d4:	00013903          	ld	s2,0(sp)
    800016d8:	02010113          	addi	sp,sp,32
    800016dc:	00008067          	ret

00000000800016e0 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    800016e0:	fe010113          	addi	sp,sp,-32
    800016e4:	00113c23          	sd	ra,24(sp)
    800016e8:	00813823          	sd	s0,16(sp)
    800016ec:	00913423          	sd	s1,8(sp)
    800016f0:	01213023          	sd	s2,0(sp)
    800016f4:	02010413          	addi	s0,sp,32
    800016f8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016fc:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    80001700:	04050593          	addi	a1,a0,64
    80001704:	00090513          	mv	a0,s2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	f24080e7          	jalr	-220(ra) # 8000162c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001710:	05048593          	addi	a1,s1,80
    80001714:	00090513          	mv	a0,s2
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	ee0080e7          	jalr	-288(ra) # 800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001720:	01813083          	ld	ra,24(sp)
    80001724:	01013403          	ld	s0,16(sp)
    80001728:	00813483          	ld	s1,8(sp)
    8000172c:	00013903          	ld	s2,0(sp)
    80001730:	02010113          	addi	sp,sp,32
    80001734:	00008067          	ret

0000000080001738 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    80001738:	fe010113          	addi	sp,sp,-32
    8000173c:	00113c23          	sd	ra,24(sp)
    80001740:	00813823          	sd	s0,16(sp)
    80001744:	00913423          	sd	s1,8(sp)
    80001748:	01213023          	sd	s2,0(sp)
    8000174c:	02010413          	addi	s0,sp,32
    80001750:	00050913          	mv	s2,a0
    80001754:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001758:	04850593          	addi	a1,a0,72
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	ecc080e7          	jalr	-308(ra) # 8000162c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001768:	05090593          	addi	a1,s2,80
    8000176c:	00048513          	mv	a0,s1
    80001770:	00000097          	auipc	ra,0x0
    80001774:	e88080e7          	jalr	-376(ra) # 800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001778:	01813083          	ld	ra,24(sp)
    8000177c:	01013403          	ld	s0,16(sp)
    80001780:	00813483          	ld	s1,8(sp)
    80001784:	00013903          	ld	s2,0(sp)
    80001788:	02010113          	addi	sp,sp,32
    8000178c:	00008067          	ret

0000000080001790 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001790:	fe010113          	addi	sp,sp,-32
    80001794:	00113c23          	sd	ra,24(sp)
    80001798:	00813823          	sd	s0,16(sp)
    8000179c:	00913423          	sd	s1,8(sp)
    800017a0:	01213023          	sd	s2,0(sp)
    800017a4:	02010413          	addi	s0,sp,32
    800017a8:	00050913          	mv	s2,a0
    800017ac:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800017b0:	05050593          	addi	a1,a0,80
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e74080e7          	jalr	-396(ra) # 8000162c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800017c0:	04090593          	addi	a1,s2,64
    800017c4:	00048513          	mv	a0,s1
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	e30080e7          	jalr	-464(ra) # 800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800017d0:	01813083          	ld	ra,24(sp)
    800017d4:	01013403          	ld	s0,16(sp)
    800017d8:	00813483          	ld	s1,8(sp)
    800017dc:	00013903          	ld	s2,0(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret

00000000800017e8 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800017e8:	fd010113          	addi	sp,sp,-48
    800017ec:	02113423          	sd	ra,40(sp)
    800017f0:	02813023          	sd	s0,32(sp)
    800017f4:	00913c23          	sd	s1,24(sp)
    800017f8:	01213823          	sd	s2,16(sp)
    800017fc:	01313423          	sd	s3,8(sp)
    80001800:	03010413          	addi	s0,sp,48
    80001804:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    80001808:	05853583          	ld	a1,88(a0)
    8000180c:	00007797          	auipc	a5,0x7
    80001810:	1b47b783          	ld	a5,436(a5) # 800089c0 <_ZL13slabAllocator>
    80001814:	0007b503          	ld	a0,0(a5)
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	330080e7          	jalr	816(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    if(newSlab == nullptr)
    80001820:	08050c63          	beqz	a0,800018b8 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    80001824:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    80001828:	0409b783          	ld	a5,64(s3)
    8000182c:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001830:	00078463          	beqz	a5,80001838 <_Z12allocateSlabP12kmem_cache_s+0x50>
        cachep->slabs_empty->prev = newSlab;
    80001834:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    80001838:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    8000183c:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    80001840:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    80001844:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    80001848:	0589b683          	ld	a3,88(s3)
    8000184c:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001850:	bd868693          	addi	a3,a3,-1064
    80001854:	0609b783          	ld	a5,96(s3)
    80001858:	02f6d6b3          	divu	a3,a3,a5
    8000185c:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001860:	00000713          	li	a4,0
    80001864:	00768793          	addi	a5,a3,7
    80001868:	0037d793          	srli	a5,a5,0x3
    8000186c:	00f77a63          	bgeu	a4,a5,80001880 <_Z12allocateSlabP12kmem_cache_s+0x98>
        newSlab->allocated[i] = 0;
    80001870:	00e487b3          	add	a5,s1,a4
    80001874:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001878:	00170713          	addi	a4,a4,1
    8000187c:	fe9ff06f          	j	80001864 <_Z12allocateSlabP12kmem_cache_s+0x7c>

    if(cachep->ctor != nullptr)
    80001880:	0689b783          	ld	a5,104(s3)
    80001884:	02078a63          	beqz	a5,800018b8 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001888:	00000913          	li	s2,0
    8000188c:	0184b783          	ld	a5,24(s1)
    80001890:	02f97463          	bgeu	s2,a5,800018b8 <_Z12allocateSlabP12kmem_cache_s+0xd0>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001894:	0689b783          	ld	a5,104(s3)
    80001898:	0104b703          	ld	a4,16(s1)
    8000189c:	06073503          	ld	a0,96(a4)
    800018a0:	03250533          	mul	a0,a0,s2
    800018a4:	00a48533          	add	a0,s1,a0
    800018a8:	42850513          	addi	a0,a0,1064
    800018ac:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    800018b0:	00190913          	addi	s2,s2,1
    800018b4:	fd9ff06f          	j	8000188c <_Z12allocateSlabP12kmem_cache_s+0xa4>
    }
}
    800018b8:	02813083          	ld	ra,40(sp)
    800018bc:	02013403          	ld	s0,32(sp)
    800018c0:	01813483          	ld	s1,24(sp)
    800018c4:	01013903          	ld	s2,16(sp)
    800018c8:	00813983          	ld	s3,8(sp)
    800018cc:	03010113          	addi	sp,sp,48
    800018d0:	00008067          	ret

00000000800018d4 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800018d4:	ff010113          	addi	sp,sp,-16
    800018d8:	00813423          	sd	s0,8(sp)
    800018dc:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800018e0:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018e4:	42850713          	addi	a4,a0,1064
    800018e8:	00e7f663          	bgeu	a5,a4,800018f4 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800018ec:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018f0:	ff5ff06f          	j	800018e4 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018f4:	bd878593          	addi	a1,a5,-1064 # bd8 <_entry-0x7ffff428>
    800018f8:	02a5f5b3          	remu	a1,a1,a0

    //return bestSize / BLOCK_SIZE;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018fc:	00100693          	li	a3,1
    80001900:	0080006f          	j	80001908 <_Z18getOptimalSlabSizem+0x34>
    80001904:	00168693          	addi	a3,a3,1
    80001908:	00400713          	li	a4,4
    8000190c:	02d76063          	bltu	a4,a3,8000192c <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    80001910:	00d79633          	sll	a2,a5,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    80001914:	bd860713          	addi	a4,a2,-1064
    80001918:	02a77733          	remu	a4,a4,a0
        if(newWaste < optimalWaste)
    8000191c:	feb774e3          	bgeu	a4,a1,80001904 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    80001920:	00070593          	mv	a1,a4
            bestSize = newSize;
    80001924:	00060793          	mv	a5,a2
    80001928:	fddff06f          	j	80001904 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    8000192c:	00c7d513          	srli	a0,a5,0xc
    80001930:	00813403          	ld	s0,8(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret

000000008000193c <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00813423          	sd	s0,8(sp)
    80001944:	01010413          	addi	s0,sp,16
    80001948:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    8000194c:	02050c63          	beqz	a0,80001984 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001950:	06058a63          	beqz	a1,800019c4 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001954:	04853503          	ld	a0,72(a0)
    80001958:	0080006f          	j	80001960 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    8000195c:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001960:	02050863          	beqz	a0,80001990 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001964:	01853783          	ld	a5,24(a0)
    80001968:	01053703          	ld	a4,16(a0)
    8000196c:	06073703          	ld	a4,96(a4)
    80001970:	02e787b3          	mul	a5,a5,a4
    80001974:	00a787b3          	add	a5,a5,a0
    80001978:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    8000197c:	feb570e3          	bgeu	a0,a1,8000195c <_Z8findSlabP12kmem_cache_sPKv+0x20>
    80001980:	fcf5fee3          	bgeu	a1,a5,8000195c <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001984:	00813403          	ld	s0,8(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret
    slab = cachep->slabs_partial;
    80001990:	0506b503          	ld	a0,80(a3)
    80001994:	0080006f          	j	8000199c <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    80001998:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000199c:	fe0504e3          	beqz	a0,80001984 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800019a0:	01853783          	ld	a5,24(a0)
    800019a4:	01053703          	ld	a4,16(a0)
    800019a8:	06073703          	ld	a4,96(a4)
    800019ac:	02e787b3          	mul	a5,a5,a4
    800019b0:	00a787b3          	add	a5,a5,a0
    800019b4:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800019b8:	feb570e3          	bgeu	a0,a1,80001998 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019bc:	fcf5fee3          	bgeu	a1,a5,80001998 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019c0:	fc5ff06f          	j	80001984 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    800019c4:	00058513          	mv	a0,a1
    800019c8:	fbdff06f          	j	80001984 <_Z8findSlabP12kmem_cache_sPKv+0x48>

00000000800019cc <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    800019cc:	ff010113          	addi	sp,sp,-16
    800019d0:	00813423          	sd	s0,8(sp)
    800019d4:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    800019d8:	41f5d79b          	sraiw	a5,a1,0x1f
    800019dc:	01d7d79b          	srliw	a5,a5,0x1d
    800019e0:	00b785bb          	addw	a1,a5,a1
    800019e4:	4035d71b          	sraiw	a4,a1,0x3
    800019e8:	00e50533          	add	a0,a0,a4
    800019ec:	02850703          	lb	a4,40(a0)
    800019f0:	0075f593          	andi	a1,a1,7
    800019f4:	40f585bb          	subw	a1,a1,a5
    800019f8:	00100793          	li	a5,1
    800019fc:	00b795bb          	sllw	a1,a5,a1
    80001a00:	fff5c593          	not	a1,a1
    80001a04:	00b775b3          	and	a1,a4,a1
    80001a08:	02b50423          	sb	a1,40(a0)
}
    80001a0c:	00813403          	ld	s0,8(sp)
    80001a10:	01010113          	addi	sp,sp,16
    80001a14:	00008067          	ret

0000000080001a18 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001a18:	fe010113          	addi	sp,sp,-32
    80001a1c:	00113c23          	sd	ra,24(sp)
    80001a20:	00813823          	sd	s0,16(sp)
    80001a24:	00913423          	sd	s1,8(sp)
    80001a28:	02010413          	addi	s0,sp,32
    80001a2c:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001a30:	00006517          	auipc	a0,0x6
    80001a34:	60050513          	addi	a0,a0,1536 # 80008030 <CONSOLE_STATUS+0x20>
    80001a38:	00002097          	auipc	ra,0x2
    80001a3c:	a48080e7          	jalr	-1464(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001a40:	01000613          	li	a2,16
    80001a44:	00048593          	mv	a1,s1
    80001a48:	00006517          	auipc	a0,0x6
    80001a4c:	60050513          	addi	a0,a0,1536 # 80008048 <CONSOLE_STATUS+0x38>
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	b08080e7          	jalr	-1272(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a58:	00a00613          	li	a2,10
    80001a5c:	0204b583          	ld	a1,32(s1)
    80001a60:	00006517          	auipc	a0,0x6
    80001a64:	5f850513          	addi	a0,a0,1528 # 80008058 <CONSOLE_STATUS+0x48>
    80001a68:	00002097          	auipc	ra,0x2
    80001a6c:	af0080e7          	jalr	-1296(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a70:	00a00613          	li	a2,10
    80001a74:	0184b583          	ld	a1,24(s1)
    80001a78:	00006517          	auipc	a0,0x6
    80001a7c:	60050513          	addi	a0,a0,1536 # 80008078 <CONSOLE_STATUS+0x68>
    80001a80:	00002097          	auipc	ra,0x2
    80001a84:	ad8080e7          	jalr	-1320(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001a88:	01813083          	ld	ra,24(sp)
    80001a8c:	01013403          	ld	s0,16(sp)
    80001a90:	00813483          	ld	s1,8(sp)
    80001a94:	02010113          	addi	sp,sp,32
    80001a98:	00008067          	ret

0000000080001a9c <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001a9c:	12050a63          	beqz	a0,80001bd0 <_Z16free_slab_objectP6slab_sPKv+0x134>
{
    80001aa0:	fd010113          	addi	sp,sp,-48
    80001aa4:	02113423          	sd	ra,40(sp)
    80001aa8:	02813023          	sd	s0,32(sp)
    80001aac:	00913c23          	sd	s1,24(sp)
    80001ab0:	01213823          	sd	s2,16(sp)
    80001ab4:	01313423          	sd	s3,8(sp)
    80001ab8:	01413023          	sd	s4,0(sp)
    80001abc:	03010413          	addi	s0,sp,48
    80001ac0:	00050493          	mv	s1,a0
    80001ac4:	00058993          	mv	s3,a1
    if(slab == nullptr || objp == nullptr)
    80001ac8:	08058463          	beqz	a1,80001b50 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001acc:	40a58933          	sub	s2,a1,a0
    80001ad0:	bd890913          	addi	s2,s2,-1064
    80001ad4:	01053a03          	ld	s4,16(a0)
    80001ad8:	060a3783          	ld	a5,96(s4)
    80001adc:	02f95933          	divu	s2,s2,a5
    80001ae0:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001ae4:	032787b3          	mul	a5,a5,s2
    80001ae8:	00f507b3          	add	a5,a0,a5
    80001aec:	42878793          	addi	a5,a5,1064
    80001af0:	06f59063          	bne	a1,a5,80001b50 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001af4:	00090593          	mv	a1,s2
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	978080e7          	jalr	-1672(ra) # 80001470 <_Z13checkSetIndexP6slab_si>
    80001b00:	04050863          	beqz	a0,80001b50 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001b04:	070a3783          	ld	a5,112(s4)
    80001b08:	00078663          	beqz	a5,80001b14 <_Z16free_slab_objectP6slab_sPKv+0x78>
        cachep->dtor((void*)objp);
    80001b0c:	00098513          	mv	a0,s3
    80001b10:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001b14:	068a3783          	ld	a5,104(s4)
    80001b18:	00078663          	beqz	a5,80001b24 <_Z16free_slab_objectP6slab_sPKv+0x88>
        cachep->ctor((void*)objp);
    80001b1c:	00098513          	mv	a0,s3
    80001b20:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001b24:	00090593          	mv	a1,s2
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	ea0080e7          	jalr	-352(ra) # 800019cc <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b34:	0184b703          	ld	a4,24(s1)
    80001b38:	0204b783          	ld	a5,32(s1)
    80001b3c:	02f70a63          	beq	a4,a5,80001b70 <_Z16free_slab_objectP6slab_sPKv+0xd4>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001b40:	00100713          	li	a4,1
    80001b44:	06e78663          	beq	a5,a4,80001bb0 <_Z16free_slab_objectP6slab_sPKv+0x114>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001b48:	fff78793          	addi	a5,a5,-1
    80001b4c:	02f4b023          	sd	a5,32(s1)
}
    80001b50:	02813083          	ld	ra,40(sp)
    80001b54:	02013403          	ld	s0,32(sp)
    80001b58:	01813483          	ld	s1,24(sp)
    80001b5c:	01013903          	ld	s2,16(sp)
    80001b60:	00813983          	ld	s3,8(sp)
    80001b64:	00013a03          	ld	s4,0(sp)
    80001b68:	03010113          	addi	sp,sp,48
    80001b6c:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001b70:	00048593          	mv	a1,s1
    80001b74:	0104b503          	ld	a0,16(s1)
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	bc0080e7          	jalr	-1088(ra) # 80001738 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b80:	0204b783          	ld	a5,32(s1)
    80001b84:	fff78793          	addi	a5,a5,-1
    80001b88:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b8c:	00048513          	mv	a0,s1
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	a48080e7          	jalr	-1464(ra) # 800015d8 <_Z5emptyP6slab_s>
    80001b98:	fa050ce3          	beqz	a0,80001b50 <_Z16free_slab_objectP6slab_sPKv+0xb4>
            removePartialSlab(slab->owner, slab);
    80001b9c:	00048593          	mv	a1,s1
    80001ba0:	0104b503          	ld	a0,16(s1)
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	bec080e7          	jalr	-1044(ra) # 80001790 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001bac:	fa5ff06f          	j	80001b50 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    80001bb0:	00048593          	mv	a1,s1
    80001bb4:	0104b503          	ld	a0,16(s1)
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	bd8080e7          	jalr	-1064(ra) # 80001790 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bc0:	0204b783          	ld	a5,32(s1)
    80001bc4:	fff78793          	addi	a5,a5,-1
    80001bc8:	02f4b023          	sd	a5,32(s1)
    80001bcc:	f85ff06f          	j	80001b50 <_Z16free_slab_objectP6slab_sPKv+0xb4>
    80001bd0:	00008067          	ret

0000000080001bd4 <_Z9kmem_initPvi>:
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001bd4:	ff010113          	addi	sp,sp,-16
    80001bd8:	00113423          	sd	ra,8(sp)
    80001bdc:	00813023          	sd	s0,0(sp)
    80001be0:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001be4:	00001097          	auipc	ra,0x1
    80001be8:	174080e7          	jalr	372(ra) # 80002d58 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	80c080e7          	jalr	-2036(ra) # 800013f8 <_Z19slab_allocator_initP14buddyAllocator>
    80001bf4:	00007797          	auipc	a5,0x7
    80001bf8:	dca7b623          	sd	a0,-564(a5) # 800089c0 <_ZL13slabAllocator>
}
    80001bfc:	00813083          	ld	ra,8(sp)
    80001c00:	00013403          	ld	s0,0(sp)
    80001c04:	01010113          	addi	sp,sp,16
    80001c08:	00008067          	ret

0000000080001c0c <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001c0c:	fe010113          	addi	sp,sp,-32
    80001c10:	00113c23          	sd	ra,24(sp)
    80001c14:	00813823          	sd	s0,16(sp)
    80001c18:	00913423          	sd	s1,8(sp)
    80001c1c:	01213023          	sd	s2,0(sp)
    80001c20:	02010413          	addi	s0,sp,32
    80001c24:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001c28:	10050a63          	beqz	a0,80001d3c <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001c2c:	05053503          	ld	a0,80(a0)
    80001c30:	04051a63          	bnez	a0,80001c84 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c34:	0404b503          	ld	a0,64(s1)
    80001c38:	08050a63          	beqz	a0,80001ccc <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	8bc080e7          	jalr	-1860(ra) # 800014f8 <_Z14allocateObjectP6slab_s>
    80001c44:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c48:	0404b503          	ld	a0,64(s1)
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	98c080e7          	jalr	-1652(ra) # 800015d8 <_Z5emptyP6slab_s>
    80001c54:	04051663          	bnez	a0,80001ca0 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c58:	00048513          	mv	a0,s1
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	a84080e7          	jalr	-1404(ra) # 800016e0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c64:	0504b503          	ld	a0,80(s1)
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	948080e7          	jalr	-1720(ra) # 800015b0 <_Z4fullP6slab_s>
    80001c70:	02050863          	beqz	a0,80001ca0 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c74:	00048513          	mv	a0,s1
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	a10080e7          	jalr	-1520(ra) # 80001688 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c80:	0200006f          	j	80001ca0 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	874080e7          	jalr	-1932(ra) # 800014f8 <_Z14allocateObjectP6slab_s>
    80001c8c:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c90:	0504b503          	ld	a0,80(s1)
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	91c080e7          	jalr	-1764(ra) # 800015b0 <_Z4fullP6slab_s>
    80001c9c:	02051063          	bnez	a0,80001cbc <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001ca0:	00090513          	mv	a0,s2
    80001ca4:	01813083          	ld	ra,24(sp)
    80001ca8:	01013403          	ld	s0,16(sp)
    80001cac:	00813483          	ld	s1,8(sp)
    80001cb0:	00013903          	ld	s2,0(sp)
    80001cb4:	02010113          	addi	sp,sp,32
    80001cb8:	00008067          	ret
            putPartialToFull(cachep);
    80001cbc:	00048513          	mv	a0,s1
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	9c8080e7          	jalr	-1592(ra) # 80001688 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cc8:	fd9ff06f          	j	80001ca0 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001ccc:	00048513          	mv	a0,s1
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	b18080e7          	jalr	-1256(ra) # 800017e8 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001cd8:	0404b903          	ld	s2,64(s1)
    80001cdc:	04090863          	beqz	s2,80001d2c <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001ce0:	00090513          	mv	a0,s2
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	814080e7          	jalr	-2028(ra) # 800014f8 <_Z14allocateObjectP6slab_s>
    80001cec:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001cf0:	0404b503          	ld	a0,64(s1)
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	8e4080e7          	jalr	-1820(ra) # 800015d8 <_Z5emptyP6slab_s>
    80001cfc:	fa0512e3          	bnez	a0,80001ca0 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001d00:	00048513          	mv	a0,s1
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	9dc080e7          	jalr	-1572(ra) # 800016e0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001d0c:	0504b503          	ld	a0,80(s1)
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	8a0080e7          	jalr	-1888(ra) # 800015b0 <_Z4fullP6slab_s>
    80001d18:	f80504e3          	beqz	a0,80001ca0 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001d1c:	00048513          	mv	a0,s1
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	968080e7          	jalr	-1688(ra) # 80001688 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001d28:	f79ff06f          	j	80001ca0 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001d2c:	0784a783          	lw	a5,120(s1)
    80001d30:	0017e793          	ori	a5,a5,1
    80001d34:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d38:	f69ff06f          	j	80001ca0 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d3c:	00050913          	mv	s2,a0
    80001d40:	f61ff06f          	j	80001ca0 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d44 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d44:	fc010113          	addi	sp,sp,-64
    80001d48:	02113c23          	sd	ra,56(sp)
    80001d4c:	02813823          	sd	s0,48(sp)
    80001d50:	02913423          	sd	s1,40(sp)
    80001d54:	03213023          	sd	s2,32(sp)
    80001d58:	01313c23          	sd	s3,24(sp)
    80001d5c:	01413823          	sd	s4,16(sp)
    80001d60:	01513423          	sd	s5,8(sp)
    80001d64:	04010413          	addi	s0,sp,64
    80001d68:	00050993          	mv	s3,a0
    80001d6c:	00058913          	mv	s2,a1
    80001d70:	00060a13          	mv	s4,a2
    80001d74:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d78:	00007517          	auipc	a0,0x7
    80001d7c:	c4853503          	ld	a0,-952(a0) # 800089c0 <_ZL13slabAllocator>
    80001d80:	07050513          	addi	a0,a0,112
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	e88080e7          	jalr	-376(ra) # 80001c0c <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d8c:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d90:	02050863          	beqz	a0,80001dc0 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d94:	00090513          	mv	a0,s2
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	b3c080e7          	jalr	-1220(ra) # 800018d4 <_Z18getOptimalSlabSizem>
    80001da0:	00050613          	mv	a2,a0
    80001da4:	000a8793          	mv	a5,s5
    80001da8:	000a0713          	mv	a4,s4
    80001dac:	00090693          	mv	a3,s2
    80001db0:	00098593          	mv	a1,s3
    80001db4:	00048513          	mv	a0,s1
    80001db8:	fffff097          	auipc	ra,0xfffff
    80001dbc:	5b4080e7          	jalr	1460(ra) # 8000136c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001dc0:	00048513          	mv	a0,s1
    80001dc4:	03813083          	ld	ra,56(sp)
    80001dc8:	03013403          	ld	s0,48(sp)
    80001dcc:	02813483          	ld	s1,40(sp)
    80001dd0:	02013903          	ld	s2,32(sp)
    80001dd4:	01813983          	ld	s3,24(sp)
    80001dd8:	01013a03          	ld	s4,16(sp)
    80001ddc:	00813a83          	ld	s5,8(sp)
    80001de0:	04010113          	addi	sp,sp,64
    80001de4:	00008067          	ret

0000000080001de8 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001de8:	04050663          	beqz	a0,80001e34 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001dec:	fe010113          	addi	sp,sp,-32
    80001df0:	00113c23          	sd	ra,24(sp)
    80001df4:	00813823          	sd	s0,16(sp)
    80001df8:	00913423          	sd	s1,8(sp)
    80001dfc:	02010413          	addi	s0,sp,32
    80001e00:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001e04:	00058e63          	beqz	a1,80001e20 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	b34080e7          	jalr	-1228(ra) # 8000193c <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001e10:	00050863          	beqz	a0,80001e20 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001e14:	00048593          	mv	a1,s1
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	c84080e7          	jalr	-892(ra) # 80001a9c <_Z16free_slab_objectP6slab_sPKv>
}
    80001e20:	01813083          	ld	ra,24(sp)
    80001e24:	01013403          	ld	s0,16(sp)
    80001e28:	00813483          	ld	s1,8(sp)
    80001e2c:	02010113          	addi	sp,sp,32
    80001e30:	00008067          	ret
    80001e34:	00008067          	ret

0000000080001e38 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001e38:	14050c63          	beqz	a0,80001f90 <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    80001e3c:	fe010113          	addi	sp,sp,-32
    80001e40:	00113c23          	sd	ra,24(sp)
    80001e44:	00813823          	sd	s0,16(sp)
    80001e48:	00913423          	sd	s1,8(sp)
    80001e4c:	01213023          	sd	s2,0(sp)
    80001e50:	02010413          	addi	s0,sp,32
    80001e54:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001e58:	00006517          	auipc	a0,0x6
    80001e5c:	23850513          	addi	a0,a0,568 # 80008090 <CONSOLE_STATUS+0x80>
    80001e60:	00001097          	auipc	ra,0x1
    80001e64:	620080e7          	jalr	1568(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e68:	00006517          	auipc	a0,0x6
    80001e6c:	23850513          	addi	a0,a0,568 # 800080a0 <CONSOLE_STATUS+0x90>
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	610080e7          	jalr	1552(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001e78:	00006517          	auipc	a0,0x6
    80001e7c:	26050513          	addi	a0,a0,608 # 800080d8 <CONSOLE_STATUS+0xc8>
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	600080e7          	jalr	1536(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001e88:	00090513          	mv	a0,s2
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	5f4080e7          	jalr	1524(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    80001e94:	00006517          	auipc	a0,0x6
    80001e98:	2ec50513          	addi	a0,a0,748 # 80008180 <CONSOLE_STATUS+0x170>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	5e4080e7          	jalr	1508(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001ea4:	00a00613          	li	a2,10
    80001ea8:	05893583          	ld	a1,88(s2)
    80001eac:	00006517          	auipc	a0,0x6
    80001eb0:	23c50513          	addi	a0,a0,572 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001eb4:	00001097          	auipc	ra,0x1
    80001eb8:	6a4080e7          	jalr	1700(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001ebc:	00a00613          	li	a2,10
    80001ec0:	06093583          	ld	a1,96(s2)
    80001ec4:	00006517          	auipc	a0,0x6
    80001ec8:	24450513          	addi	a0,a0,580 # 80008108 <CONSOLE_STATUS+0xf8>
    80001ecc:	00001097          	auipc	ra,0x1
    80001ed0:	68c080e7          	jalr	1676(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001ed4:	00006517          	auipc	a0,0x6
    80001ed8:	25450513          	addi	a0,a0,596 # 80008128 <CONSOLE_STATUS+0x118>
    80001edc:	00001097          	auipc	ra,0x1
    80001ee0:	5a4080e7          	jalr	1444(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001ee4:	00006517          	auipc	a0,0x6
    80001ee8:	26450513          	addi	a0,a0,612 # 80008148 <CONSOLE_STATUS+0x138>
    80001eec:	00001097          	auipc	ra,0x1
    80001ef0:	594080e7          	jalr	1428(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001ef4:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001ef8:	00048c63          	beqz	s1,80001f10 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80001efc:	00048513          	mv	a0,s1
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	b18080e7          	jalr	-1256(ra) # 80001a18 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f08:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f0c:	fedff06f          	j	80001ef8 <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001f10:	00006517          	auipc	a0,0x6
    80001f14:	24850513          	addi	a0,a0,584 # 80008158 <CONSOLE_STATUS+0x148>
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	568080e7          	jalr	1384(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001f20:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001f24:	00048c63          	beqz	s1,80001f3c <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	aec080e7          	jalr	-1300(ra) # 80001a18 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f34:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f38:	fedff06f          	j	80001f24 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001f3c:	00006517          	auipc	a0,0x6
    80001f40:	22c50513          	addi	a0,a0,556 # 80008168 <CONSOLE_STATUS+0x158>
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	53c080e7          	jalr	1340(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001f4c:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f50:	00048c63          	beqz	s1,80001f68 <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    80001f54:	00048513          	mv	a0,s1
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	ac0080e7          	jalr	-1344(ra) # 80001a18 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f60:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f64:	fedff06f          	j	80001f50 <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001f68:	00006517          	auipc	a0,0x6
    80001f6c:	12850513          	addi	a0,a0,296 # 80008090 <CONSOLE_STATUS+0x80>
    80001f70:	00001097          	auipc	ra,0x1
    80001f74:	510080e7          	jalr	1296(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
}
    80001f78:	01813083          	ld	ra,24(sp)
    80001f7c:	01013403          	ld	s0,16(sp)
    80001f80:	00813483          	ld	s1,8(sp)
    80001f84:	00013903          	ld	s2,0(sp)
    80001f88:	02010113          	addi	sp,sp,32
    80001f8c:	00008067          	ret
    80001f90:	00008067          	ret

0000000080001f94 <_Z22printSlabAllocatorInfov>:
{
    80001f94:	fe010113          	addi	sp,sp,-32
    80001f98:	00113c23          	sd	ra,24(sp)
    80001f9c:	00813823          	sd	s0,16(sp)
    80001fa0:	00913423          	sd	s1,8(sp)
    80001fa4:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80001fa8:	00006517          	auipc	a0,0x6
    80001fac:	1d050513          	addi	a0,a0,464 # 80008178 <CONSOLE_STATUS+0x168>
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	4d0080e7          	jalr	1232(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001fb8:	00006517          	auipc	a0,0x6
    80001fbc:	1d050513          	addi	a0,a0,464 # 80008188 <CONSOLE_STATUS+0x178>
    80001fc0:	00001097          	auipc	ra,0x1
    80001fc4:	4c0080e7          	jalr	1216(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001fc8:	00007497          	auipc	s1,0x7
    80001fcc:	9f848493          	addi	s1,s1,-1544 # 800089c0 <_ZL13slabAllocator>
    80001fd0:	0004b783          	ld	a5,0(s1)
    80001fd4:	01000613          	li	a2,16
    80001fd8:	0007b583          	ld	a1,0(a5)
    80001fdc:	00006517          	auipc	a0,0x6
    80001fe0:	1fc50513          	addi	a0,a0,508 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	574080e7          	jalr	1396(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001fec:	01000613          	li	a2,16
    80001ff0:	0004b583          	ld	a1,0(s1)
    80001ff4:	00006517          	auipc	a0,0x6
    80001ff8:	20450513          	addi	a0,a0,516 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80001ffc:	00001097          	auipc	ra,0x1
    80002000:	55c080e7          	jalr	1372(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80002004:	00006517          	auipc	a0,0x6
    80002008:	20c50513          	addi	a0,a0,524 # 80008210 <CONSOLE_STATUS+0x200>
    8000200c:	00001097          	auipc	ra,0x1
    80002010:	474080e7          	jalr	1140(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80002014:	0004b503          	ld	a0,0(s1)
    80002018:	07050513          	addi	a0,a0,112
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	e1c080e7          	jalr	-484(ra) # 80001e38 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80002024:	00006517          	auipc	a0,0x6
    80002028:	20450513          	addi	a0,a0,516 # 80008228 <CONSOLE_STATUS+0x218>
    8000202c:	00001097          	auipc	ra,0x1
    80002030:	454080e7          	jalr	1108(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002034:	00000493          	li	s1,0
    80002038:	0100006f          	j	80002048 <_Z22printSlabAllocatorInfov+0xb4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    8000203c:	00000097          	auipc	ra,0x0
    80002040:	dfc080e7          	jalr	-516(ra) # 80001e38 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002044:	00148493          	addi	s1,s1,1
    80002048:	00c00793          	li	a5,12
    8000204c:	0297e063          	bltu	a5,s1,8000206c <_Z22printSlabAllocatorInfov+0xd8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002050:	00349793          	slli	a5,s1,0x3
    80002054:	00007717          	auipc	a4,0x7
    80002058:	96c73703          	ld	a4,-1684(a4) # 800089c0 <_ZL13slabAllocator>
    8000205c:	00f707b3          	add	a5,a4,a5
    80002060:	0087b503          	ld	a0,8(a5)
    80002064:	fc051ce3          	bnez	a0,8000203c <_Z22printSlabAllocatorInfov+0xa8>
    80002068:	fddff06f          	j	80002044 <_Z22printSlabAllocatorInfov+0xb0>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    8000206c:	00006517          	auipc	a0,0x6
    80002070:	10c50513          	addi	a0,a0,268 # 80008178 <CONSOLE_STATUS+0x168>
    80002074:	00001097          	auipc	ra,0x1
    80002078:	40c080e7          	jalr	1036(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
}
    8000207c:	01813083          	ld	ra,24(sp)
    80002080:	01013403          	ld	s0,16(sp)
    80002084:	00813483          	ld	s1,8(sp)
    80002088:	02010113          	addi	sp,sp,32
    8000208c:	00008067          	ret

0000000080002090 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80002090:	fd010113          	addi	sp,sp,-48
    80002094:	02113423          	sd	ra,40(sp)
    80002098:	02813023          	sd	s0,32(sp)
    8000209c:	00913c23          	sd	s1,24(sp)
    800020a0:	01213823          	sd	s2,16(sp)
    800020a4:	01313423          	sd	s3,8(sp)
    800020a8:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	920080e7          	jalr	-1760(ra) # 800029cc <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    800020b4:	00400793          	li	a5,4
    800020b8:	00a7fa63          	bgeu	a5,a0,800020cc <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    800020bc:	01100793          	li	a5,17
    800020c0:	00a7f863          	bgeu	a5,a0,800020d0 <_Z7kmallocm+0x40>
        return nullptr;
    800020c4:	00000913          	li	s2,0
    800020c8:	04c0006f          	j	80002114 <_Z7kmallocm+0x84>
        level = CACHE_BUFFER_SMALL;
    800020cc:	00500513          	li	a0,5
    size = (1 << level);
    800020d0:	00100693          	li	a3,1
    800020d4:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    800020d8:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    800020dc:	00007917          	auipc	s2,0x7
    800020e0:	8e493903          	ld	s2,-1820(s2) # 800089c0 <_ZL13slabAllocator>
    800020e4:	00349793          	slli	a5,s1,0x3
    800020e8:	00f907b3          	add	a5,s2,a5
    800020ec:	0087b783          	ld	a5,8(a5)
    800020f0:	04078263          	beqz	a5,80002134 <_Z7kmallocm+0xa4>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    800020f4:	00349513          	slli	a0,s1,0x3
    800020f8:	00007497          	auipc	s1,0x7
    800020fc:	8c84b483          	ld	s1,-1848(s1) # 800089c0 <_ZL13slabAllocator>
    80002100:	00a48533          	add	a0,s1,a0
    80002104:	00853503          	ld	a0,8(a0)
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	b04080e7          	jalr	-1276(ra) # 80001c0c <_Z16kmem_cache_allocP12kmem_cache_s>
    80002110:	00050913          	mv	s2,a0
}
    80002114:	00090513          	mv	a0,s2
    80002118:	02813083          	ld	ra,40(sp)
    8000211c:	02013403          	ld	s0,32(sp)
    80002120:	01813483          	ld	s1,24(sp)
    80002124:	01013903          	ld	s2,16(sp)
    80002128:	00813983          	ld	s3,8(sp)
    8000212c:	03010113          	addi	sp,sp,48
    80002130:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80002134:	07090513          	addi	a0,s2,112
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	ad4080e7          	jalr	-1324(ra) # 80001c0c <_Z16kmem_cache_allocP12kmem_cache_s>
    80002140:	00349713          	slli	a4,s1,0x3
    80002144:	00e90933          	add	s2,s2,a4
    80002148:	00a93423          	sd	a0,8(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    8000214c:	00007797          	auipc	a5,0x7
    80002150:	8747b783          	ld	a5,-1932(a5) # 800089c0 <_ZL13slabAllocator>
    80002154:	00e787b3          	add	a5,a5,a4
    80002158:	0087b903          	ld	s2,8(a5)
    8000215c:	fa090ce3          	beqz	s2,80002114 <_Z7kmallocm+0x84>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002160:	00098513          	mv	a0,s3
    80002164:	fffff097          	auipc	ra,0xfffff
    80002168:	770080e7          	jalr	1904(ra) # 800018d4 <_Z18getOptimalSlabSizem>
    8000216c:	00050613          	mv	a2,a0
    80002170:	00000793          	li	a5,0
    80002174:	00000713          	li	a4,0
    80002178:	00098693          	mv	a3,s3
    8000217c:	00006597          	auipc	a1,0x6
    80002180:	0c458593          	addi	a1,a1,196 # 80008240 <CONSOLE_STATUS+0x230>
    80002184:	00090513          	mv	a0,s2
    80002188:	fffff097          	auipc	ra,0xfffff
    8000218c:	1e4080e7          	jalr	484(ra) # 8000136c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    80002190:	f65ff06f          	j	800020f4 <_Z7kmallocm+0x64>

0000000080002194 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80002194:	08050263          	beqz	a0,80002218 <_Z5kfreePKv+0x84>
{
    80002198:	fe010113          	addi	sp,sp,-32
    8000219c:	00113c23          	sd	ra,24(sp)
    800021a0:	00813823          	sd	s0,16(sp)
    800021a4:	00913423          	sd	s1,8(sp)
    800021a8:	01213023          	sd	s2,0(sp)
    800021ac:	02010413          	addi	s0,sp,32
    800021b0:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021b4:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    800021b8:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021bc:	00c00793          	li	a5,12
    800021c0:	0297e863          	bltu	a5,s1,800021f0 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    800021c4:	00349793          	slli	a5,s1,0x3
    800021c8:	00006717          	auipc	a4,0x6
    800021cc:	7f873703          	ld	a4,2040(a4) # 800089c0 <_ZL13slabAllocator>
    800021d0:	00f707b3          	add	a5,a4,a5
    800021d4:	00090593          	mv	a1,s2
    800021d8:	0087b503          	ld	a0,8(a5)
    800021dc:	fffff097          	auipc	ra,0xfffff
    800021e0:	760080e7          	jalr	1888(ra) # 8000193c <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    800021e4:	00051663          	bnez	a0,800021f0 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021e8:	00148493          	addi	s1,s1,1
    800021ec:	fd1ff06f          	j	800021bc <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    800021f0:	00050863          	beqz	a0,80002200 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    800021f4:	00090593          	mv	a1,s2
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	8a4080e7          	jalr	-1884(ra) # 80001a9c <_Z16free_slab_objectP6slab_sPKv>
    }
}
    80002200:	01813083          	ld	ra,24(sp)
    80002204:	01013403          	ld	s0,16(sp)
    80002208:	00813483          	ld	s1,8(sp)
    8000220c:	00013903          	ld	s2,0(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00008067          	ret
    80002218:	00008067          	ret

000000008000221c <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    8000221c:	fe010113          	addi	sp,sp,-32
    80002220:	00113c23          	sd	ra,24(sp)
    80002224:	00813823          	sd	s0,16(sp)
    80002228:	00913423          	sd	s1,8(sp)
    8000222c:	02010413          	addi	s0,sp,32
    80002230:	00050493          	mv	s1,a0
    //if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    //{
    //    cachep->errors|=DESTROY_ERROR;
    //    return;
    //}
    destroy_slab_list(&cachep->slabs_empty);
    80002234:	04050513          	addi	a0,a0,64
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	0a4080e7          	jalr	164(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    80002240:	05048513          	addi	a0,s1,80
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	098080e7          	jalr	152(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    8000224c:	04848513          	addi	a0,s1,72
    80002250:	fffff097          	auipc	ra,0xfffff
    80002254:	08c080e7          	jalr	140(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80002258:	00048593          	mv	a1,s1
    8000225c:	00006517          	auipc	a0,0x6
    80002260:	76453503          	ld	a0,1892(a0) # 800089c0 <_ZL13slabAllocator>
    80002264:	07050513          	addi	a0,a0,112
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	b80080e7          	jalr	-1152(ra) # 80001de8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80002270:	01813083          	ld	ra,24(sp)
    80002274:	01013403          	ld	s0,16(sp)
    80002278:	00813483          	ld	s1,8(sp)
    8000227c:	02010113          	addi	sp,sp,32
    80002280:	00008067          	ret

0000000080002284 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002284:	02050863          	beqz	a0,800022b4 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00113423          	sd	ra,8(sp)
    80002290:	00813023          	sd	s0,0(sp)
    80002294:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    80002298:	04050513          	addi	a0,a0,64
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	040080e7          	jalr	64(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    800022a4:	00813083          	ld	ra,8(sp)
    800022a8:	00013403          	ld	s0,0(sp)
    800022ac:	01010113          	addi	sp,sp,16
    800022b0:	00008067          	ret
        return 0;
    800022b4:	00000513          	li	a0,0
}
    800022b8:	00008067          	ret

00000000800022bc <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800022bc:	06050a63          	beqz	a0,80002330 <_Z16kmem_cache_errorP12kmem_cache_s+0x74>
{
    800022c0:	fe010113          	addi	sp,sp,-32
    800022c4:	00113c23          	sd	ra,24(sp)
    800022c8:	00813823          	sd	s0,16(sp)
    800022cc:	00913423          	sd	s1,8(sp)
    800022d0:	02010413          	addi	s0,sp,32
    800022d4:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    800022d8:	07852783          	lw	a5,120(a0)
    800022dc:	0017f793          	andi	a5,a5,1
    800022e0:	02079463          	bnez	a5,80002308 <_Z16kmem_cache_errorP12kmem_cache_s+0x4c>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    800022e4:	0784a783          	lw	a5,120(s1)
    800022e8:	0027f793          	andi	a5,a5,2
    800022ec:	02079863          	bnez	a5,8000231c <_Z16kmem_cache_errorP12kmem_cache_s+0x60>
        KConsole::trapPrintString("DESTROY ERROR");

    return cachep->errors;
    800022f0:	0784a503          	lw	a0,120(s1)
}
    800022f4:	01813083          	ld	ra,24(sp)
    800022f8:	01013403          	ld	s0,16(sp)
    800022fc:	00813483          	ld	s1,8(sp)
    80002300:	02010113          	addi	sp,sp,32
    80002304:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    80002308:	00006517          	auipc	a0,0x6
    8000230c:	f5050513          	addi	a0,a0,-176 # 80008258 <CONSOLE_STATUS+0x248>
    80002310:	00001097          	auipc	ra,0x1
    80002314:	170080e7          	jalr	368(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    80002318:	fcdff06f          	j	800022e4 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    8000231c:	00006517          	auipc	a0,0x6
    80002320:	f4c50513          	addi	a0,a0,-180 # 80008268 <CONSOLE_STATUS+0x258>
    80002324:	00001097          	auipc	ra,0x1
    80002328:	15c080e7          	jalr	348(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    8000232c:	fc5ff06f          	j	800022f0 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
        return 0;
    80002330:	00000513          	li	a0,0
}
    80002334:	00008067          	ret

0000000080002338 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002338:	ff010113          	addi	sp,sp,-16
    8000233c:	00113423          	sd	ra,8(sp)
    80002340:	00813023          	sd	s0,0(sp)
    80002344:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002348:	00002097          	auipc	ra,0x2
    8000234c:	a28080e7          	jalr	-1496(ra) # 80003d70 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80002350:	00006797          	auipc	a5,0x6
    80002354:	6787b783          	ld	a5,1656(a5) # 800089c8 <_ZN3PCB7runningE>
    80002358:	0287b703          	ld	a4,40(a5)
    8000235c:	0307b503          	ld	a0,48(a5)
    80002360:	000700e7          	jalr	a4

    thread_exit_kernel();
    80002364:	fffff097          	auipc	ra,0xfffff
    80002368:	f1c080e7          	jalr	-228(ra) # 80001280 <_Z18thread_exit_kernelv>
}
    8000236c:	00813083          	ld	ra,8(sp)
    80002370:	00013403          	ld	s0,0(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret

000000008000237c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000237c:	ff010113          	addi	sp,sp,-16
    80002380:	00813423          	sd	s0,8(sp)
    80002384:	01010413          	addi	s0,sp,16
    })
    80002388:	00050023          	sb	zero,0(a0)
    8000238c:	00e53c23          	sd	a4,24(a0)
    80002390:	02053023          	sd	zero,32(a0)
    80002394:	02b53423          	sd	a1,40(a0)
    80002398:	02c53823          	sd	a2,48(a0)
    8000239c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800023a0:	000017b7          	lui	a5,0x1
    800023a4:	00f686b3          	add	a3,a3,a5
    })
    800023a8:	04d53423          	sd	a3,72(a0)
    800023ac:	00000797          	auipc	a5,0x0
    800023b0:	f8c78793          	addi	a5,a5,-116 # 80002338 <_ZN3PCB6runnerEv>
    800023b4:	04f53823          	sd	a5,80(a0)
    800023b8:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    800023bc:	00053423          	sd	zero,8(a0)
}
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_ZN3PCB5startEv>:
{
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00113423          	sd	ra,8(sp)
    800023d4:	00813023          	sd	s0,0(sp)
    800023d8:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	35c080e7          	jalr	860(ra) # 80003738 <_ZN9Scheduler3putEP3PCB>
}
    800023e4:	00813083          	ld	ra,8(sp)
    800023e8:	00013403          	ld	s0,0(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN3PCBnwEm>:
    Riscv::changePrivMode();

    PCB::contextSwitch(&old->context, &running->context);
}

void *PCB::operator new(size_t size) {
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00113423          	sd	ra,8(sp)
    800023fc:	00813023          	sd	s0,0(sp)
    80002400:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    80002404:	00006797          	auipc	a5,0x6
    80002408:	5647b783          	ld	a5,1380(a5) # 80008968 <_GLOBAL_OFFSET_TABLE_+0xa8>
    8000240c:	0007b503          	ld	a0,0(a5)
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	7fc080e7          	jalr	2044(ra) # 80001c0c <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002418:	00813083          	ld	ra,8(sp)
    8000241c:	00013403          	ld	s0,0(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002428:	ff010113          	addi	sp,sp,-16
    8000242c:	00113423          	sd	ra,8(sp)
    80002430:	00813023          	sd	s0,0(sp)
    80002434:	01010413          	addi	s0,sp,16
    80002438:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    8000243c:	00006797          	auipc	a5,0x6
    80002440:	52c7b783          	ld	a5,1324(a5) # 80008968 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002444:	0007b503          	ld	a0,0(a5)
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	9a0080e7          	jalr	-1632(ra) # 80001de8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002450:	00813083          	ld	ra,8(sp)
    80002454:	00013403          	ld	s0,0(sp)
    80002458:	01010113          	addi	sp,sp,16
    8000245c:	00008067          	ret

0000000080002460 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002460:	ff010113          	addi	sp,sp,-16
    80002464:	00113423          	sd	ra,8(sp)
    80002468:	00813023          	sd	s0,0(sp)
    8000246c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002470:	03853503          	ld	a0,56(a0)
    80002474:	00002097          	auipc	ra,0x2
    80002478:	680080e7          	jalr	1664(ra) # 80004af4 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000247c:	00813083          	ld	ra,8(sp)
    80002480:	00013403          	ld	s0,0(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_ZN3PCB8dispatchEv>:
{
    8000248c:	fe010113          	addi	sp,sp,-32
    80002490:	00113c23          	sd	ra,24(sp)
    80002494:	00813823          	sd	s0,16(sp)
    80002498:	00913423          	sd	s1,8(sp)
    8000249c:	01213023          	sd	s2,0(sp)
    800024a0:	02010413          	addi	s0,sp,32
    PCB* old = running;
    800024a4:	00006497          	auipc	s1,0x6
    800024a8:	5244b483          	ld	s1,1316(s1) # 800089c8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800024ac:	0404a783          	lw	a5,64(s1)
    if(old->getState() == PCB::RUNNING)
    800024b0:	00100713          	li	a4,1
    800024b4:	04e78e63          	beq	a5,a4,80002510 <_ZN3PCB8dispatchEv+0x84>
    else if(old->getState() == PCB::FINISHED) // TODO test it
    800024b8:	00300713          	li	a4,3
    800024bc:	06e78263          	beq	a5,a4,80002520 <_ZN3PCB8dispatchEv+0x94>
    PCB::running = Scheduler::get();
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	2cc080e7          	jalr	716(ra) # 8000378c <_ZN9Scheduler3getEv>
    800024c8:	00006917          	auipc	s2,0x6
    800024cc:	50090913          	addi	s2,s2,1280 # 800089c8 <_ZN3PCB7runningE>
    800024d0:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800024d4:	00100793          	li	a5,1
    800024d8:	04f52023          	sw	a5,64(a0)
    Riscv::changePrivMode();
    800024dc:	00002097          	auipc	ra,0x2
    800024e0:	eac080e7          	jalr	-340(ra) # 80004388 <_ZN5Riscv14changePrivModeEv>
    PCB::contextSwitch(&old->context, &running->context);
    800024e4:	00093583          	ld	a1,0(s2)
    800024e8:	04858593          	addi	a1,a1,72
    800024ec:	04848513          	addi	a0,s1,72
    800024f0:	fffff097          	auipc	ra,0xfffff
    800024f4:	d28080e7          	jalr	-728(ra) # 80001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800024f8:	01813083          	ld	ra,24(sp)
    800024fc:	01013403          	ld	s0,16(sp)
    80002500:	00813483          	ld	s1,8(sp)
    80002504:	00013903          	ld	s2,0(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00008067          	ret
        Scheduler::put(old);
    80002510:	00048513          	mv	a0,s1
    80002514:	00001097          	auipc	ra,0x1
    80002518:	224080e7          	jalr	548(ra) # 80003738 <_ZN9Scheduler3putEP3PCB>
    8000251c:	fa5ff06f          	j	800024c0 <_ZN3PCB8dispatchEv+0x34>
        delete old;
    80002520:	fa0480e3          	beqz	s1,800024c0 <_ZN3PCB8dispatchEv+0x34>
    80002524:	00048513          	mv	a0,s1
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	f38080e7          	jalr	-200(ra) # 80002460 <_ZN3PCBD1Ev>
    80002530:	00048513          	mv	a0,s1
    80002534:	00000097          	auipc	ra,0x0
    80002538:	ef4080e7          	jalr	-268(ra) # 80002428 <_ZN3PCBdlEPv>
    8000253c:	f85ff06f          	j	800024c0 <_ZN3PCB8dispatchEv+0x34>

0000000080002540 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002540:	fe010113          	addi	sp,sp,-32
    80002544:	00113c23          	sd	ra,24(sp)
    80002548:	00813823          	sd	s0,16(sp)
    8000254c:	00913423          	sd	s1,8(sp)
    80002550:	01213023          	sd	s2,0(sp)
    80002554:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002558:	06000513          	li	a0,96
    8000255c:	00000097          	auipc	ra,0x0
    80002560:	e98080e7          	jalr	-360(ra) # 800023f4 <_ZN3PCBnwEm>
    80002564:	00050493          	mv	s1,a0
    80002568:	00050e63          	beqz	a0,80002584 <_ZN3PCB10initializeEv+0x44>
    8000256c:	00000713          	li	a4,0
    80002570:	00000693          	li	a3,0
    80002574:	00000613          	li	a2,0
    80002578:	00000593          	li	a1,0
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	e00080e7          	jalr	-512(ra) # 8000237c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002584:	00100793          	li	a5,1
    80002588:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    8000258c:	00006797          	auipc	a5,0x6
    80002590:	4297be23          	sd	s1,1084(a5) # 800089c8 <_ZN3PCB7runningE>
    80002594:	00100793          	li	a5,1
    80002598:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    8000259c:	00001537          	lui	a0,0x1
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	af0080e7          	jalr	-1296(ra) # 80002090 <_Z7kmallocm>
    800025a8:	00050913          	mv	s2,a0
//                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    800025ac:	06000513          	li	a0,96
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	e44080e7          	jalr	-444(ra) # 800023f4 <_ZN3PCBnwEm>
    800025b8:	00050493          	mv	s1,a0
    800025bc:	02050063          	beqz	a0,800025dc <_ZN3PCB10initializeEv+0x9c>
    800025c0:	00200713          	li	a4,2
    800025c4:	00090693          	mv	a3,s2
    800025c8:	00000613          	li	a2,0
    800025cc:	00006597          	auipc	a1,0x6
    800025d0:	35c5b583          	ld	a1,860(a1) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x68>
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	da8080e7          	jalr	-600(ra) # 8000237c <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    800025dc:	00006797          	auipc	a5,0x6
    800025e0:	3ec78793          	addi	a5,a5,1004 # 800089c8 <_ZN3PCB7runningE>
    800025e4:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    800025e8:	00100713          	li	a4,1
    800025ec:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    800025f0:	0087b503          	ld	a0,8(a5)
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	dd8080e7          	jalr	-552(ra) # 800023cc <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
//                           kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    800025fc:	00001537          	lui	a0,0x1
    80002600:	00002097          	auipc	ra,0x2
    80002604:	484080e7          	jalr	1156(ra) # 80004a84 <_ZN15MemoryAllocator7kmallocEm>
    80002608:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    8000260c:	06000513          	li	a0,96
    80002610:	00000097          	auipc	ra,0x0
    80002614:	de4080e7          	jalr	-540(ra) # 800023f4 <_ZN3PCBnwEm>
    80002618:	00050493          	mv	s1,a0
    8000261c:	02050063          	beqz	a0,8000263c <_ZN3PCB10initializeEv+0xfc>
    80002620:	00200713          	li	a4,2
    80002624:	00090693          	mv	a3,s2
    80002628:	00000613          	li	a2,0
    8000262c:	00006597          	auipc	a1,0x6
    80002630:	3045b583          	ld	a1,772(a1) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002634:	00000097          	auipc	ra,0x0
    80002638:	d48080e7          	jalr	-696(ra) # 8000237c <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
    8000263c:	00006797          	auipc	a5,0x6
    80002640:	3897be23          	sd	s1,924(a5) # 800089d8 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    80002644:	00048513          	mv	a0,s1
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	d84080e7          	jalr	-636(ra) # 800023cc <_ZN3PCB5startEv>
}
    80002650:	01813083          	ld	ra,24(sp)
    80002654:	01013403          	ld	s0,16(sp)
    80002658:	00813483          	ld	s1,8(sp)
    8000265c:	00013903          	ld	s2,0(sp)
    80002660:	02010113          	addi	sp,sp,32
    80002664:	00008067          	ret

0000000080002668 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002668:	ff010113          	addi	sp,sp,-16
    8000266c:	00813423          	sd	s0,8(sp)
    80002670:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002674:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002678:	ffd50513          	addi	a0,a0,-3
}
    8000267c:	00153513          	seqz	a0,a0
    80002680:	00813403          	ld	s0,8(sp)
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00008067          	ret

000000008000268c <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    8000268c:	ff010113          	addi	sp,sp,-16
    80002690:	00113423          	sd	ra,8(sp)
    80002694:	00813023          	sd	s0,0(sp)
    80002698:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    8000269c:	00006797          	auipc	a5,0x6
    800026a0:	32c78793          	addi	a5,a5,812 # 800089c8 <_ZN3PCB7runningE>
    800026a4:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800026a8:	0007b783          	ld	a5,0(a5)
    800026ac:	00300713          	li	a4,3
    800026b0:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	dd8080e7          	jalr	-552(ra) # 8000248c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800026bc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800026c0:	00002097          	auipc	ra,0x2
    800026c4:	c90080e7          	jalr	-880(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    800026c8:	00813083          	ld	ra,8(sp)
    800026cc:	00013403          	ld	s0,0(sp)
    800026d0:	01010113          	addi	sp,sp,16
    800026d4:	00008067          	ret

00000000800026d8 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00113423          	sd	ra,8(sp)
    800026e0:	00813023          	sd	s0,0(sp)
    800026e4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800026e8:	00006797          	auipc	a5,0x6
    800026ec:	2e07bc23          	sd	zero,760(a5) # 800089e0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	d9c080e7          	jalr	-612(ra) # 8000248c <_ZN3PCB8dispatchEv>
}
    800026f8:	00813083          	ld	ra,8(sp)
    800026fc:	00013403          	ld	s0,0(sp)
    80002700:	01010113          	addi	sp,sp,16
    80002704:	00008067          	ret

0000000080002708 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002708:	ff010113          	addi	sp,sp,-16
    8000270c:	00113423          	sd	ra,8(sp)
    80002710:	00813023          	sd	s0,0(sp)
    80002714:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002718:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    8000271c:	00006717          	auipc	a4,0x6
    80002720:	2ac70713          	addi	a4,a4,684 # 800089c8 <_ZN3PCB7runningE>
    80002724:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002728:	00073703          	ld	a4,0(a4)
    8000272c:	00006697          	auipc	a3,0x6
    80002730:	1f46b683          	ld	a3,500(a3) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002734:	0006b683          	ld	a3,0(a3)
    80002738:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000273c:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002740:	00001097          	auipc	ra,0x1
    80002744:	e7c080e7          	jalr	-388(ra) # 800035bc <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	d44080e7          	jalr	-700(ra) # 8000248c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002750:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002754:	00002097          	auipc	ra,0x2
    80002758:	bfc080e7          	jalr	-1028(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000275c:	00813083          	ld	ra,8(sp)
    80002760:	00013403          	ld	s0,0(sp)
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00008067          	ret

000000008000276c <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    8000276c:	fd010113          	addi	sp,sp,-48
    80002770:	02113423          	sd	ra,40(sp)
    80002774:	02813023          	sd	s0,32(sp)
    80002778:	00913c23          	sd	s1,24(sp)
    8000277c:	01213823          	sd	s2,16(sp)
    80002780:	01313423          	sd	s3,8(sp)
    80002784:	01413023          	sd	s4,0(sp)
    80002788:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    8000278c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002790:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002794:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002798:	06000513          	li	a0,96
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	c58080e7          	jalr	-936(ra) # 800023f4 <_ZN3PCBnwEm>
    800027a4:	00050493          	mv	s1,a0
    800027a8:	02050063          	beqz	a0,800027c8 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    800027ac:	00200713          	li	a4,2
    800027b0:	00006697          	auipc	a3,0x6
    800027b4:	2386b683          	ld	a3,568(a3) # 800089e8 <_ZN3PCB10savedRegA4E>
    800027b8:	000a0613          	mv	a2,s4
    800027bc:	00098593          	mv	a1,s3
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	bbc080e7          	jalr	-1092(ra) # 8000237c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800027c8:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    800027cc:	02048e63          	beqz	s1,80002808 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    800027d0:	00048513          	mv	a0,s1
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	bf8080e7          	jalr	-1032(ra) # 800023cc <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800027dc:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800027e0:	00002097          	auipc	ra,0x2
    800027e4:	b70080e7          	jalr	-1168(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    800027e8:	02813083          	ld	ra,40(sp)
    800027ec:	02013403          	ld	s0,32(sp)
    800027f0:	01813483          	ld	s1,24(sp)
    800027f4:	01013903          	ld	s2,16(sp)
    800027f8:	00813983          	ld	s3,8(sp)
    800027fc:	00013a03          	ld	s4,0(sp)
    80002800:	03010113          	addi	sp,sp,48
    80002804:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002808:	00100513          	li	a0,1
    8000280c:	fd5ff06f          	j	800027e0 <_ZN3PCB19threadCreateHandlerEv+0x74>

0000000080002810 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002810:	ff010113          	addi	sp,sp,-16
    80002814:	00113423          	sd	ra,8(sp)
    80002818:	00813023          	sd	s0,0(sp)
    8000281c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002820:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002824:	02050463          	beqz	a0,8000284c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	ba4080e7          	jalr	-1116(ra) # 800023cc <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002830:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002834:	00002097          	auipc	ra,0x2
    80002838:	b1c080e7          	jalr	-1252(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000283c:	00813083          	ld	ra,8(sp)
    80002840:	00013403          	ld	s0,0(sp)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    8000284c:	00100513          	li	a0,1
    80002850:	fe5ff06f          	j	80002834 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002854 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002854:	fd010113          	addi	sp,sp,-48
    80002858:	02113423          	sd	ra,40(sp)
    8000285c:	02813023          	sd	s0,32(sp)
    80002860:	00913c23          	sd	s1,24(sp)
    80002864:	01213823          	sd	s2,16(sp)
    80002868:	01313423          	sd	s3,8(sp)
    8000286c:	01413023          	sd	s4,0(sp)
    80002870:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002874:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002878:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    8000287c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002880:	06000513          	li	a0,96
    80002884:	00000097          	auipc	ra,0x0
    80002888:	b70080e7          	jalr	-1168(ra) # 800023f4 <_ZN3PCBnwEm>
    8000288c:	00050493          	mv	s1,a0
    80002890:	02050063          	beqz	a0,800028b0 <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    80002894:	00200713          	li	a4,2
    80002898:	00006697          	auipc	a3,0x6
    8000289c:	1506b683          	ld	a3,336(a3) # 800089e8 <_ZN3PCB10savedRegA4E>
    800028a0:	000a0613          	mv	a2,s4
    800028a4:	00098593          	mv	a1,s3
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	ad4080e7          	jalr	-1324(ra) # 8000237c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800028b0:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    800028b4:	02048863          	beqz	s1,800028e4 <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    800028b8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800028bc:	00002097          	auipc	ra,0x2
    800028c0:	a94080e7          	jalr	-1388(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028c4:	02813083          	ld	ra,40(sp)
    800028c8:	02013403          	ld	s0,32(sp)
    800028cc:	01813483          	ld	s1,24(sp)
    800028d0:	01013903          	ld	s2,16(sp)
    800028d4:	00813983          	ld	s3,8(sp)
    800028d8:	00013a03          	ld	s4,0(sp)
    800028dc:	03010113          	addi	sp,sp,48
    800028e0:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    800028e4:	00100513          	li	a0,1
    800028e8:	fd5ff06f          	j	800028bc <_ZN3PCB20threadMakePCBHandlerEv+0x68>

00000000800028ec <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    800028ec:	fe010113          	addi	sp,sp,-32
    800028f0:	00113c23          	sd	ra,24(sp)
    800028f4:	00813823          	sd	s0,16(sp)
    800028f8:	00913423          	sd	s1,8(sp)
    800028fc:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002900:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002904:	02048e63          	beqz	s1,80002940 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002908:	00048513          	mv	a0,s1
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	b54080e7          	jalr	-1196(ra) # 80002460 <_ZN3PCBD1Ev>
    80002914:	00048513          	mv	a0,s1
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	b10080e7          	jalr	-1264(ra) # 80002428 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002920:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002924:	00002097          	auipc	ra,0x2
    80002928:	a2c080e7          	jalr	-1492(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	02010113          	addi	sp,sp,32
    8000293c:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002940:	00100513          	li	a0,1
    80002944:	fe1ff06f          	j	80002924 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002948 <_Z12getBlockAddrm>:
    addBlocks(buddy, addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002948:	ff010113          	addi	sp,sp,-16
    8000294c:	00813423          	sd	s0,8(sp)
    80002950:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002954:	fffff7b7          	lui	a5,0xfffff
    80002958:	00f57533          	and	a0,a0,a5
    8000295c:	00813403          	ld	s0,8(sp)
    80002960:	01010113          	addi	sp,sp,16
    80002964:	00008067          	ret

0000000080002968 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002968:	ff010113          	addi	sp,sp,-16
    8000296c:	00113423          	sd	ra,8(sp)
    80002970:	00813023          	sd	s0,0(sp)
    80002974:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	fd0080e7          	jalr	-48(ra) # 80002948 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002980:	000017b7          	lui	a5,0x1
    80002984:	00f50533          	add	a0,a0,a5
    80002988:	00813083          	ld	ra,8(sp)
    8000298c:	00013403          	ld	s0,0(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00813423          	sd	s0,8(sp)
    800029a0:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    800029a4:	00000713          	li	a4,0
    size_t x = 1;
    800029a8:	00100793          	li	a5,1
    while(x <= num)
    800029ac:	00f56863          	bltu	a0,a5,800029bc <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    800029b0:	00170713          	addi	a4,a4,1
        x<<=1;
    800029b4:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    800029b8:	ff5ff06f          	j	800029ac <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    800029bc:	fff70513          	addi	a0,a4,-1
    800029c0:	00813403          	ld	s0,8(sp)
    800029c4:	01010113          	addi	sp,sp,16
    800029c8:	00008067          	ret

00000000800029cc <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    800029cc:	ff010113          	addi	sp,sp,-16
    800029d0:	00813423          	sd	s0,8(sp)
    800029d4:	01010413          	addi	s0,sp,16
    800029d8:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    800029dc:	00000513          	li	a0,0
    size_t x = 1;
    800029e0:	00100793          	li	a5,1
    while(x < num)
    800029e4:	00e7f863          	bgeu	a5,a4,800029f4 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    800029e8:	00150513          	addi	a0,a0,1
        x<<=1;
    800029ec:	00179793          	slli	a5,a5,0x1
    while(x < num)
    800029f0:	ff5ff06f          	j	800029e4 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    800029f4:	00813403          	ld	s0,8(sp)
    800029f8:	01010113          	addi	sp,sp,16
    800029fc:	00008067          	ret

0000000080002a00 <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002a00:	ff010113          	addi	sp,sp,-16
    80002a04:	00813423          	sd	s0,8(sp)
    80002a08:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002a0c:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002a10:	00260793          	addi	a5,a2,2
    80002a14:	00479793          	slli	a5,a5,0x4
    80002a18:	00f507b3          	add	a5,a0,a5
    80002a1c:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002a20:	02078463          	beqz	a5,80002a48 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002a24:	00260613          	addi	a2,a2,2
    80002a28:	00461613          	slli	a2,a2,0x4
    80002a2c:	00c50633          	add	a2,a0,a2
    80002a30:	00863783          	ld	a5,8(a2)
    80002a34:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002a38:	00b63423          	sd	a1,8(a2)
    }
}
    80002a3c:	00813403          	ld	s0,8(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002a48:	00260613          	addi	a2,a2,2
    80002a4c:	00461613          	slli	a2,a2,0x4
    80002a50:	00c50633          	add	a2,a0,a2
    80002a54:	00b63423          	sd	a1,8(a2)
    80002a58:	00b63023          	sd	a1,0(a2)
    80002a5c:	fe1ff06f          	j	80002a3c <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002a60 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002a60:	ff010113          	addi	sp,sp,-16
    80002a64:	00813423          	sd	s0,8(sp)
    80002a68:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002a6c:	000017b7          	lui	a5,0x1
    80002a70:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002a74:	00853783          	ld	a5,8(a0)
    80002a78:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002a7c:	00f677b3          	and	a5,a2,a5
    80002a80:	00078a63          	beqz	a5,80002a94 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002a84:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002a88:	00813403          	ld	s0,8(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret
        return (size_t)addr + diff;
    80002a94:	00c58533          	add	a0,a1,a2
    80002a98:	ff1ff06f          	j	80002a88 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002a9c <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002a9c:	fd010113          	addi	sp,sp,-48
    80002aa0:	02113423          	sd	ra,40(sp)
    80002aa4:	02813023          	sd	s0,32(sp)
    80002aa8:	00913c23          	sd	s1,24(sp)
    80002aac:	01213823          	sd	s2,16(sp)
    80002ab0:	01313423          	sd	s3,8(sp)
    80002ab4:	01413023          	sd	s4,0(sp)
    80002ab8:	03010413          	addi	s0,sp,48
    80002abc:	00050913          	mv	s2,a0
    80002ac0:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002ac4:	06070a63          	beqz	a4,80002b38 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002ac8:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002acc:	04c68663          	beq	a3,a2,80002b18 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002ad0:	fff68493          	addi	s1,a3,-1
    80002ad4:	00048613          	mv	a2,s1
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	f88080e7          	jalr	-120(ra) # 80002a60 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002ae0:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002ae4:	00000713          	li	a4,0
    80002ae8:	00048693          	mv	a3,s1
    80002aec:	00098613          	mv	a2,s3
    80002af0:	00090513          	mv	a0,s2
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	fa8080e7          	jalr	-88(ra) # 80002a9c <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002afc:	00100713          	li	a4,1
    80002b00:	00048693          	mv	a3,s1
    80002b04:	00098613          	mv	a2,s3
    80002b08:	000a0593          	mv	a1,s4
    80002b0c:	00090513          	mv	a0,s2
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	f8c080e7          	jalr	-116(ra) # 80002a9c <_Z5splitP14buddyAllocatorPvmmb>
}
    80002b18:	02813083          	ld	ra,40(sp)
    80002b1c:	02013403          	ld	s0,32(sp)
    80002b20:	01813483          	ld	s1,24(sp)
    80002b24:	01013903          	ld	s2,16(sp)
    80002b28:	00813983          	ld	s3,8(sp)
    80002b2c:	00013a03          	ld	s4,0(sp)
    80002b30:	03010113          	addi	sp,sp,48
    80002b34:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002b38:	00068613          	mv	a2,a3
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	ec4080e7          	jalr	-316(ra) # 80002a00 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002b44:	fd5ff06f          	j	80002b18 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002b48 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002b48:	fd010113          	addi	sp,sp,-48
    80002b4c:	02113423          	sd	ra,40(sp)
    80002b50:	02813023          	sd	s0,32(sp)
    80002b54:	00913c23          	sd	s1,24(sp)
    80002b58:	01213823          	sd	s2,16(sp)
    80002b5c:	01313423          	sd	s3,8(sp)
    80002b60:	03010413          	addi	s0,sp,48
    80002b64:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002b68:	00058513          	mv	a0,a1
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	e60080e7          	jalr	-416(ra) # 800029cc <_Z11getDeg2Ceilm>
    80002b74:	00050993          	mv	s3,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002b78:	00050693          	mv	a3,a0
    80002b7c:	0184b783          	ld	a5,24(s1)
    80002b80:	06d7ee63          	bltu	a5,a3,80002bfc <_Z11buddy_allocP14buddyAllocatorm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002b84:	00268793          	addi	a5,a3,2
    80002b88:	00479793          	slli	a5,a5,0x4
    80002b8c:	00f487b3          	add	a5,s1,a5
    80002b90:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002b94:	00091663          	bnez	s2,80002ba0 <_Z11buddy_allocP14buddyAllocatorm+0x58>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002b98:	00168693          	addi	a3,a3,1
    80002b9c:	fe1ff06f          	j	80002b7c <_Z11buddy_allocP14buddyAllocatorm+0x34>
            buddy->bucket[i].first = ret->next;
    80002ba0:	00093703          	ld	a4,0(s2)
    80002ba4:	00268793          	addi	a5,a3,2
    80002ba8:	00479793          	slli	a5,a5,0x4
    80002bac:	00f487b3          	add	a5,s1,a5
    80002bb0:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002bb4:	02070a63          	beqz	a4,80002be8 <_Z11buddy_allocP14buddyAllocatorm+0xa0>
            split(buddy, (void*)ret, level, i, true);
    80002bb8:	00100713          	li	a4,1
    80002bbc:	00098613          	mv	a2,s3
    80002bc0:	00090593          	mv	a1,s2
    80002bc4:	00048513          	mv	a0,s1
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	ed4080e7          	jalr	-300(ra) # 80002a9c <_Z5splitP14buddyAllocatorPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002bd0:	00100513          	li	a0,1
    80002bd4:	0135153b          	sllw	a0,a0,s3
    80002bd8:	0104b983          	ld	s3,16(s1)
    80002bdc:	40a989b3          	sub	s3,s3,a0
    80002be0:	0134b823          	sd	s3,16(s1)
            return ret;
    80002be4:	01c0006f          	j	80002c00 <_Z11buddy_allocP14buddyAllocatorm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002be8:	00268793          	addi	a5,a3,2
    80002bec:	00479793          	slli	a5,a5,0x4
    80002bf0:	00f487b3          	add	a5,s1,a5
    80002bf4:	0007b423          	sd	zero,8(a5)
    80002bf8:	fc1ff06f          	j	80002bb8 <_Z11buddy_allocP14buddyAllocatorm+0x70>
    return nullptr;
    80002bfc:	00000913          	li	s2,0
}
    80002c00:	00090513          	mv	a0,s2
    80002c04:	02813083          	ld	ra,40(sp)
    80002c08:	02013403          	ld	s0,32(sp)
    80002c0c:	01813483          	ld	s1,24(sp)
    80002c10:	01013903          	ld	s2,16(sp)
    80002c14:	00813983          	ld	s3,8(sp)
    80002c18:	03010113          	addi	sp,sp,48
    80002c1c:	00008067          	ret

0000000080002c20 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002c20:	fd010113          	addi	sp,sp,-48
    80002c24:	02113423          	sd	ra,40(sp)
    80002c28:	02813023          	sd	s0,32(sp)
    80002c2c:	00913c23          	sd	s1,24(sp)
    80002c30:	01213823          	sd	s2,16(sp)
    80002c34:	01313423          	sd	s3,8(sp)
    80002c38:	03010413          	addi	s0,sp,48
    80002c3c:	00050493          	mv	s1,a0
    80002c40:	00058993          	mv	s3,a1
    80002c44:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002c48:	01853783          	ld	a5,24(a0)
    80002c4c:	02c78a63          	beq	a5,a2,80002c80 <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	e10080e7          	jalr	-496(ra) # 80002a60 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002c58:	00290793          	addi	a5,s2,2
    80002c5c:	00479793          	slli	a5,a5,0x4
    80002c60:	00f487b3          	add	a5,s1,a5
    80002c64:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002c68:	00000713          	li	a4,0
    while(curr != nullptr)
    80002c6c:	0a078e63          	beqz	a5,80002d28 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002c70:	00a78e63          	beq	a5,a0,80002c8c <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002c74:	00078713          	mv	a4,a5
        curr = curr->next;
    80002c78:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002c7c:	ff1ff06f          	j	80002c6c <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	d80080e7          	jalr	-640(ra) # 80002a00 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002c88:	0b40006f          	j	80002d3c <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002c8c:	04070863          	beqz	a4,80002cdc <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002c90:	0007b683          	ld	a3,0(a5)
    80002c94:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002c98:	00290693          	addi	a3,s2,2
    80002c9c:	00469693          	slli	a3,a3,0x4
    80002ca0:	00d486b3          	add	a3,s1,a3
    80002ca4:	0086b683          	ld	a3,8(a3)
    80002ca8:	02f68063          	beq	a3,a5,80002cc8 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002cac:	06a9f263          	bgeu	s3,a0,80002d10 <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002cb0:	00190613          	addi	a2,s2,1
    80002cb4:	00098593          	mv	a1,s3
    80002cb8:	00048513          	mv	a0,s1
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	f64080e7          	jalr	-156(ra) # 80002c20 <_Z9addBlocksP14buddyAllocatorPvm>
    80002cc4:	0780006f          	j	80002d3c <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002cc8:	00290793          	addi	a5,s2,2
    80002ccc:	00479793          	slli	a5,a5,0x4
    80002cd0:	00f487b3          	add	a5,s1,a5
    80002cd4:	00e7b423          	sd	a4,8(a5)
    80002cd8:	fd5ff06f          	j	80002cac <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002cdc:	0007b703          	ld	a4,0(a5)
    80002ce0:	00070c63          	beqz	a4,80002cf8 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002ce4:	00290793          	addi	a5,s2,2
    80002ce8:	00479793          	slli	a5,a5,0x4
    80002cec:	00f487b3          	add	a5,s1,a5
    80002cf0:	00e7b023          	sd	a4,0(a5)
    80002cf4:	fb9ff06f          	j	80002cac <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002cf8:	00290793          	addi	a5,s2,2
    80002cfc:	00479793          	slli	a5,a5,0x4
    80002d00:	00f487b3          	add	a5,s1,a5
    80002d04:	0007b423          	sd	zero,8(a5)
    80002d08:	0007b023          	sd	zero,0(a5)
    80002d0c:	fa1ff06f          	j	80002cac <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80002d10:	00190613          	addi	a2,s2,1
    80002d14:	00050593          	mv	a1,a0
    80002d18:	00048513          	mv	a0,s1
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	f04080e7          	jalr	-252(ra) # 80002c20 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002d24:	0180006f          	j	80002d3c <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80002d28:	00090613          	mv	a2,s2
    80002d2c:	00098593          	mv	a1,s3
    80002d30:	00048513          	mv	a0,s1
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	ccc080e7          	jalr	-820(ra) # 80002a00 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80002d3c:	02813083          	ld	ra,40(sp)
    80002d40:	02013403          	ld	s0,32(sp)
    80002d44:	01813483          	ld	s1,24(sp)
    80002d48:	01013903          	ld	s2,16(sp)
    80002d4c:	00813983          	ld	s3,8(sp)
    80002d50:	03010113          	addi	sp,sp,48
    80002d54:	00008067          	ret

0000000080002d58 <_Z10buddy_initPvm>:
{
    80002d58:	fd010113          	addi	sp,sp,-48
    80002d5c:	02113423          	sd	ra,40(sp)
    80002d60:	02813023          	sd	s0,32(sp)
    80002d64:	00913c23          	sd	s1,24(sp)
    80002d68:	01213823          	sd	s2,16(sp)
    80002d6c:	01313423          	sd	s3,8(sp)
    80002d70:	03010413          	addi	s0,sp,48
    80002d74:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002d78:	00050493          	mv	s1,a0
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	bcc080e7          	jalr	-1076(ra) # 80002948 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002d84:	00a48a63          	beq	s1,a0,80002d98 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	be0080e7          	jalr	-1056(ra) # 80002968 <_Z16getNextBlockAddrm>
    80002d90:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    80002d94:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    80002d98:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002d9c:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002da0:	00048513          	mv	a0,s1
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	bc4080e7          	jalr	-1084(ra) # 80002968 <_Z16getNextBlockAddrm>
    80002dac:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    80002db0:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002db4:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002db8:	00098513          	mv	a0,s3
    80002dbc:	00000097          	auipc	ra,0x0
    80002dc0:	bdc080e7          	jalr	-1060(ra) # 80002998 <_Z12getDeg2Floorm>
    80002dc4:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002dc8:	00000713          	li	a4,0
    80002dcc:	02e56063          	bltu	a0,a4,80002dec <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002dd0:	00270793          	addi	a5,a4,2
    80002dd4:	00479793          	slli	a5,a5,0x4
    80002dd8:	00f907b3          	add	a5,s2,a5
    80002ddc:	0007b423          	sd	zero,8(a5)
    80002de0:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002de4:	00170713          	addi	a4,a4,1
    80002de8:	fe5ff06f          	j	80002dcc <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002dec:	00000493          	li	s1,0
    80002df0:	0334f463          	bgeu	s1,s3,80002e18 <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80002df4:	00893583          	ld	a1,8(s2)
    80002df8:	00c49793          	slli	a5,s1,0xc
    80002dfc:	00000613          	li	a2,0
    80002e00:	00f585b3          	add	a1,a1,a5
    80002e04:	00090513          	mv	a0,s2
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	e18080e7          	jalr	-488(ra) # 80002c20 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002e10:	00148493          	addi	s1,s1,1
    80002e14:	fddff06f          	j	80002df0 <_Z10buddy_initPvm+0x98>
}
    80002e18:	00090513          	mv	a0,s2
    80002e1c:	02813083          	ld	ra,40(sp)
    80002e20:	02013403          	ld	s0,32(sp)
    80002e24:	01813483          	ld	s1,24(sp)
    80002e28:	01013903          	ld	s2,16(sp)
    80002e2c:	00813983          	ld	s3,8(sp)
    80002e30:	03010113          	addi	sp,sp,48
    80002e34:	00008067          	ret

0000000080002e38 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80002e38:	fd010113          	addi	sp,sp,-48
    80002e3c:	02113423          	sd	ra,40(sp)
    80002e40:	02813023          	sd	s0,32(sp)
    80002e44:	00913c23          	sd	s1,24(sp)
    80002e48:	01213823          	sd	s2,16(sp)
    80002e4c:	01313423          	sd	s3,8(sp)
    80002e50:	03010413          	addi	s0,sp,48
    80002e54:	00050493          	mv	s1,a0
    80002e58:	00058993          	mv	s3,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e5c:	00060513          	mv	a0,a2
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	b6c080e7          	jalr	-1172(ra) # 800029cc <_Z11getDeg2Ceilm>
    80002e68:	00050913          	mv	s2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80002e6c:	00050613          	mv	a2,a0
    80002e70:	00098593          	mv	a1,s3
    80002e74:	00048513          	mv	a0,s1
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	da8080e7          	jalr	-600(ra) # 80002c20 <_Z9addBlocksP14buddyAllocatorPvm>
    buddy->numOfFreeBlocks += (1 << level);
    80002e80:	00100513          	li	a0,1
    80002e84:	0125153b          	sllw	a0,a0,s2
    80002e88:	0104b903          	ld	s2,16(s1)
    80002e8c:	00a90933          	add	s2,s2,a0
    80002e90:	0124b823          	sd	s2,16(s1)
}
    80002e94:	02813083          	ld	ra,40(sp)
    80002e98:	02013403          	ld	s0,32(sp)
    80002e9c:	01813483          	ld	s1,24(sp)
    80002ea0:	01013903          	ld	s2,16(sp)
    80002ea4:	00813983          	ld	s3,8(sp)
    80002ea8:	03010113          	addi	sp,sp,48
    80002eac:	00008067          	ret

0000000080002eb0 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    80002eb0:	fd010113          	addi	sp,sp,-48
    80002eb4:	02113423          	sd	ra,40(sp)
    80002eb8:	02813023          	sd	s0,32(sp)
    80002ebc:	00913c23          	sd	s1,24(sp)
    80002ec0:	01213823          	sd	s2,16(sp)
    80002ec4:	01313423          	sd	s3,8(sp)
    80002ec8:	03010413          	addi	s0,sp,48
    80002ecc:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80002ed0:	00005517          	auipc	a0,0x5
    80002ed4:	3a850513          	addi	a0,a0,936 # 80008278 <CONSOLE_STATUS+0x268>
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	5a8080e7          	jalr	1448(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    80002ee0:	01000613          	li	a2,16
    80002ee4:	0089b583          	ld	a1,8(s3)
    80002ee8:	00005517          	auipc	a0,0x5
    80002eec:	3c850513          	addi	a0,a0,968 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	668080e7          	jalr	1640(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80002ef8:	00a00613          	li	a2,10
    80002efc:	0009b583          	ld	a1,0(s3)
    80002f00:	00005517          	auipc	a0,0x5
    80002f04:	3c850513          	addi	a0,a0,968 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	650080e7          	jalr	1616(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80002f10:	00a00613          	li	a2,10
    80002f14:	0109b583          	ld	a1,16(s3)
    80002f18:	00005517          	auipc	a0,0x5
    80002f1c:	3c850513          	addi	a0,a0,968 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	638080e7          	jalr	1592(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80002f28:	0189a903          	lw	s2,24(s3)
    80002f2c:	0080006f          	j	80002f34 <_Z14printBuddyInfoP14buddyAllocator+0x84>
    80002f30:	fff9091b          	addiw	s2,s2,-1
    80002f34:	06094663          	bltz	s2,80002fa0 <_Z14printBuddyInfoP14buddyAllocator+0xf0>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80002f38:	00a00613          	li	a2,10
    80002f3c:	00090593          	mv	a1,s2
    80002f40:	00005517          	auipc	a0,0x5
    80002f44:	3c050513          	addi	a0,a0,960 # 80008300 <CONSOLE_STATUS+0x2f0>
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	610080e7          	jalr	1552(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    80002f50:	00005517          	auipc	a0,0x5
    80002f54:	3b850513          	addi	a0,a0,952 # 80008308 <CONSOLE_STATUS+0x2f8>
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	528080e7          	jalr	1320(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80002f60:	00290793          	addi	a5,s2,2
    80002f64:	00479793          	slli	a5,a5,0x4
    80002f68:	00f987b3          	add	a5,s3,a5
    80002f6c:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80002f70:	fc0480e3          	beqz	s1,80002f30 <_Z14printBuddyInfoP14buddyAllocator+0x80>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    80002f74:	00000613          	li	a2,0
    80002f78:	01000593          	li	a1,16
    80002f7c:	00048513          	mv	a0,s1
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	544080e7          	jalr	1348(ra) # 800034c4 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80002f88:	00005517          	auipc	a0,0x5
    80002f8c:	1f850513          	addi	a0,a0,504 # 80008180 <CONSOLE_STATUS+0x170>
    80002f90:	00000097          	auipc	ra,0x0
    80002f94:	4f0080e7          	jalr	1264(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    80002f98:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80002f9c:	fd5ff06f          	j	80002f70 <_Z14printBuddyInfoP14buddyAllocator+0xc0>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80002fa0:	00005517          	auipc	a0,0x5
    80002fa4:	38850513          	addi	a0,a0,904 # 80008328 <CONSOLE_STATUS+0x318>
    80002fa8:	00000097          	auipc	ra,0x0
    80002fac:	4d8080e7          	jalr	1240(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    80002fb0:	02813083          	ld	ra,40(sp)
    80002fb4:	02013403          	ld	s0,32(sp)
    80002fb8:	01813483          	ld	s1,24(sp)
    80002fbc:	01013903          	ld	s2,16(sp)
    80002fc0:	00813983          	ld	s3,8(sp)
    80002fc4:	03010113          	addi	sp,sp,48
    80002fc8:	00008067          	ret

0000000080002fcc <_ZN8KConsole10initializeEv>:
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;
bool KConsole::finished = false;

void KConsole::initialize()
{
    80002fcc:	fe010113          	addi	sp,sp,-32
    80002fd0:	00113c23          	sd	ra,24(sp)
    80002fd4:	00813823          	sd	s0,16(sp)
    80002fd8:	00913423          	sd	s1,8(sp)
    80002fdc:	01213023          	sd	s2,0(sp)
    80002fe0:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002fe4:	01800513          	li	a0,24
    80002fe8:	00002097          	auipc	ra,0x2
    80002fec:	2e8080e7          	jalr	744(ra) # 800052d0 <_ZN10KSemaphorenwEm>
    80002ff0:	00050493          	mv	s1,a0
    80002ff4:	00050863          	beqz	a0,80003004 <_ZN8KConsole10initializeEv+0x38>
    80002ff8:	00000593          	li	a1,0
    80002ffc:	00002097          	auipc	ra,0x2
    80003000:	070080e7          	jalr	112(ra) # 8000506c <_ZN10KSemaphoreC1Ei>
    80003004:	00006797          	auipc	a5,0x6
    80003008:	9e97b623          	sd	s1,-1556(a5) # 800089f0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    8000300c:	01800513          	li	a0,24
    80003010:	00002097          	auipc	ra,0x2
    80003014:	2c0080e7          	jalr	704(ra) # 800052d0 <_ZN10KSemaphorenwEm>
    80003018:	00050493          	mv	s1,a0
    8000301c:	00050863          	beqz	a0,8000302c <_ZN8KConsole10initializeEv+0x60>
    80003020:	00000593          	li	a1,0
    80003024:	00002097          	auipc	ra,0x2
    80003028:	048080e7          	jalr	72(ra) # 8000506c <_ZN10KSemaphoreC1Ei>
    8000302c:	00006797          	auipc	a5,0x6
    80003030:	9c97b623          	sd	s1,-1588(a5) # 800089f8 <_ZN8KConsole19hasCharactersOutputE>
}
    80003034:	01813083          	ld	ra,24(sp)
    80003038:	01013403          	ld	s0,16(sp)
    8000303c:	00813483          	ld	s1,8(sp)
    80003040:	00013903          	ld	s2,0(sp)
    80003044:	02010113          	addi	sp,sp,32
    80003048:	00008067          	ret
    8000304c:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003050:	00048513          	mv	a0,s1
    80003054:	00002097          	auipc	ra,0x2
    80003058:	32c080e7          	jalr	812(ra) # 80005380 <_ZN10KSemaphoredlEPv>
    8000305c:	00090513          	mv	a0,s2
    80003060:	0000f097          	auipc	ra,0xf
    80003064:	b08080e7          	jalr	-1272(ra) # 80011b68 <_Unwind_Resume>
    80003068:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    8000306c:	00048513          	mv	a0,s1
    80003070:	00002097          	auipc	ra,0x2
    80003074:	310080e7          	jalr	784(ra) # 80005380 <_ZN10KSemaphoredlEPv>
    80003078:	00090513          	mv	a0,s2
    8000307c:	0000f097          	auipc	ra,0xf
    80003080:	aec080e7          	jalr	-1300(ra) # 80011b68 <_Unwind_Resume>

0000000080003084 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80003084:	00006697          	auipc	a3,0x6
    80003088:	96c68693          	addi	a3,a3,-1684 # 800089f0 <_ZN8KConsole18hasCharactersInputE>
    8000308c:	0106b603          	ld	a2,16(a3)
    80003090:	00160793          	addi	a5,a2,1
    80003094:	00004737          	lui	a4,0x4
    80003098:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    8000309c:	00e7f7b3          	and	a5,a5,a4
    800030a0:	0186b703          	ld	a4,24(a3)
    800030a4:	04e78263          	beq	a5,a4,800030e8 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800030a8:	ff010113          	addi	sp,sp,-16
    800030ac:	00113423          	sd	ra,8(sp)
    800030b0:	00813023          	sd	s0,0(sp)
    800030b4:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800030b8:	0000a717          	auipc	a4,0xa
    800030bc:	98070713          	addi	a4,a4,-1664 # 8000ca38 <_ZN8KConsole11inputBufferE>
    800030c0:	00c70633          	add	a2,a4,a2
    800030c4:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800030c8:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800030cc:	0006b503          	ld	a0,0(a3)
    800030d0:	00002097          	auipc	ra,0x2
    800030d4:	1b8080e7          	jalr	440(ra) # 80005288 <_ZN10KSemaphore6signalEv>
}
    800030d8:	00813083          	ld	ra,8(sp)
    800030dc:	00013403          	ld	s0,0(sp)
    800030e0:	01010113          	addi	sp,sp,16
    800030e4:	00008067          	ret
    800030e8:	00008067          	ret

00000000800030ec <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800030ec:	00005797          	auipc	a5,0x5
    800030f0:	7e47b783          	ld	a5,2020(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x10>
    800030f4:	0007b783          	ld	a5,0(a5)
    800030f8:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    800030fc:	0017f793          	andi	a5,a5,1
    80003100:	02078063          	beqz	a5,80003120 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80003104:	00006797          	auipc	a5,0x6
    80003108:	8047b783          	ld	a5,-2044(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000310c:	0007b783          	ld	a5,0(a5)
    80003110:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003114:	00006797          	auipc	a5,0x6
    80003118:	8fc7b783          	ld	a5,-1796(a5) # 80008a10 <_ZN8KConsole11pendingGetcE>
    8000311c:	00079463          	bnez	a5,80003124 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003120:	00008067          	ret
{
    80003124:	ff010113          	addi	sp,sp,-16
    80003128:	00113423          	sd	ra,8(sp)
    8000312c:	00813023          	sd	s0,0(sp)
    80003130:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003134:	fff78793          	addi	a5,a5,-1
    80003138:	00006717          	auipc	a4,0x6
    8000313c:	8cf73c23          	sd	a5,-1832(a4) # 80008a10 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003140:	00000097          	auipc	ra,0x0
    80003144:	f44080e7          	jalr	-188(ra) # 80003084 <_ZN8KConsole17putCharacterInputEc>
}
    80003148:	00813083          	ld	ra,8(sp)
    8000314c:	00013403          	ld	s0,0(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret

0000000080003158 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003158:	fe010113          	addi	sp,sp,-32
    8000315c:	00113c23          	sd	ra,24(sp)
    80003160:	00813823          	sd	s0,16(sp)
    80003164:	00913423          	sd	s1,8(sp)
    80003168:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    8000316c:	00006497          	auipc	s1,0x6
    80003170:	88448493          	addi	s1,s1,-1916 # 800089f0 <_ZN8KConsole18hasCharactersInputE>
    80003174:	0004b503          	ld	a0,0(s1)
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	f98080e7          	jalr	-104(ra) # 80005110 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80003180:	0184b783          	ld	a5,24(s1)
    80003184:	0104b703          	ld	a4,16(s1)
    80003188:	04e78063          	beq	a5,a4,800031c8 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    8000318c:	0000a717          	auipc	a4,0xa
    80003190:	8ac70713          	addi	a4,a4,-1876 # 8000ca38 <_ZN8KConsole11inputBufferE>
    80003194:	00f70733          	add	a4,a4,a5
    80003198:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    8000319c:	00178793          	addi	a5,a5,1
    800031a0:	00004737          	lui	a4,0x4
    800031a4:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800031a8:	00e7f7b3          	and	a5,a5,a4
    800031ac:	00006717          	auipc	a4,0x6
    800031b0:	84f73e23          	sd	a5,-1956(a4) # 80008a08 <_ZN8KConsole9inputHeadE>
    return c;
}
    800031b4:	01813083          	ld	ra,24(sp)
    800031b8:	01013403          	ld	s0,16(sp)
    800031bc:	00813483          	ld	s1,8(sp)
    800031c0:	02010113          	addi	sp,sp,32
    800031c4:	00008067          	ret
        return -1;
    800031c8:	0ff00513          	li	a0,255
    800031cc:	fe9ff06f          	j	800031b4 <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800031d0 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800031d0:	00006697          	auipc	a3,0x6
    800031d4:	82068693          	addi	a3,a3,-2016 # 800089f0 <_ZN8KConsole18hasCharactersInputE>
    800031d8:	0286b603          	ld	a2,40(a3)
    800031dc:	00160793          	addi	a5,a2,1
    800031e0:	00004737          	lui	a4,0x4
    800031e4:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800031e8:	00e7f7b3          	and	a5,a5,a4
    800031ec:	0306b703          	ld	a4,48(a3)
    800031f0:	04e78a63          	beq	a5,a4,80003244 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    800031f4:	ff010113          	addi	sp,sp,-16
    800031f8:	00113423          	sd	ra,8(sp)
    800031fc:	00813023          	sd	s0,0(sp)
    80003200:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003204:	00068713          	mv	a4,a3
    80003208:	0386b683          	ld	a3,56(a3)
    8000320c:	00168693          	addi	a3,a3,1
    80003210:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003214:	00006697          	auipc	a3,0x6
    80003218:	82468693          	addi	a3,a3,-2012 # 80008a38 <_ZN8KConsole12outputBufferE>
    8000321c:	00c68633          	add	a2,a3,a2
    80003220:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003224:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003228:	00873503          	ld	a0,8(a4)
    8000322c:	00002097          	auipc	ra,0x2
    80003230:	05c080e7          	jalr	92(ra) # 80005288 <_ZN10KSemaphore6signalEv>
}
    80003234:	00813083          	ld	ra,8(sp)
    80003238:	00013403          	ld	s0,0(sp)
    8000323c:	01010113          	addi	sp,sp,16
    80003240:	00008067          	ret
    80003244:	00008067          	ret

0000000080003248 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003248:	fe010113          	addi	sp,sp,-32
    8000324c:	00113c23          	sd	ra,24(sp)
    80003250:	00813823          	sd	s0,16(sp)
    80003254:	00913423          	sd	s1,8(sp)
    80003258:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    8000325c:	00005497          	auipc	s1,0x5
    80003260:	79448493          	addi	s1,s1,1940 # 800089f0 <_ZN8KConsole18hasCharactersInputE>
    80003264:	0084b503          	ld	a0,8(s1)
    80003268:	00002097          	auipc	ra,0x2
    8000326c:	ea8080e7          	jalr	-344(ra) # 80005110 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003270:	0304b783          	ld	a5,48(s1)
    80003274:	0284b703          	ld	a4,40(s1)
    80003278:	04e78063          	beq	a5,a4,800032b8 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    8000327c:	00005717          	auipc	a4,0x5
    80003280:	7bc70713          	addi	a4,a4,1980 # 80008a38 <_ZN8KConsole12outputBufferE>
    80003284:	00f70733          	add	a4,a4,a5
    80003288:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    8000328c:	00178793          	addi	a5,a5,1
    80003290:	00004737          	lui	a4,0x4
    80003294:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003298:	00e7f7b3          	and	a5,a5,a4
    8000329c:	00005717          	auipc	a4,0x5
    800032a0:	78f73223          	sd	a5,1924(a4) # 80008a20 <_ZN8KConsole10outputHeadE>
    return c;
}
    800032a4:	01813083          	ld	ra,24(sp)
    800032a8:	01013403          	ld	s0,16(sp)
    800032ac:	00813483          	ld	s1,8(sp)
    800032b0:	02010113          	addi	sp,sp,32
    800032b4:	00008067          	ret
        return -1;
    800032b8:	0ff00513          	li	a0,255
    800032bc:	fe9ff06f          	j	800032a4 <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800032c0 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800032c0:	ff010113          	addi	sp,sp,-16
    800032c4:	00113423          	sd	ra,8(sp)
    800032c8:	00813023          	sd	s0,0(sp)
    800032cc:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800032d0:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800032d4:	0ff57513          	andi	a0,a0,255
    800032d8:	00000097          	auipc	ra,0x0
    800032dc:	ef8080e7          	jalr	-264(ra) # 800031d0 <_ZN8KConsole18putCharacterOutputEc>
}
    800032e0:	00813083          	ld	ra,8(sp)
    800032e4:	00013403          	ld	s0,0(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret

00000000800032f0 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00113c23          	sd	ra,24(sp)
    800032f8:	00813823          	sd	s0,16(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003304:	00005717          	auipc	a4,0x5
    80003308:	6ec70713          	addi	a4,a4,1772 # 800089f0 <_ZN8KConsole18hasCharactersInputE>
    8000330c:	02073783          	ld	a5,32(a4)
    80003310:	00178793          	addi	a5,a5,1
    80003314:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80003318:	00000097          	auipc	ra,0x0
    8000331c:	e40080e7          	jalr	-448(ra) # 80003158 <_ZN8KConsole17getCharacterInputEv>
    80003320:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003324:	01b00793          	li	a5,27
    80003328:	02f51663          	bne	a0,a5,80003354 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    8000332c:	00d00793          	li	a5,13
    80003330:	02f48863          	beq	s1,a5,80003360 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003334:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003338:	00001097          	auipc	ra,0x1
    8000333c:	018080e7          	jalr	24(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003340:	01813083          	ld	ra,24(sp)
    80003344:	01013403          	ld	s0,16(sp)
    80003348:	00813483          	ld	s1,8(sp)
    8000334c:	02010113          	addi	sp,sp,32
    80003350:	00008067          	ret
        putCharacterOutput(ch);
    80003354:	00000097          	auipc	ra,0x0
    80003358:	e7c080e7          	jalr	-388(ra) # 800031d0 <_ZN8KConsole18putCharacterOutputEc>
    8000335c:	fd1ff06f          	j	8000332c <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003360:	00d00513          	li	a0,13
    80003364:	00000097          	auipc	ra,0x0
    80003368:	e6c080e7          	jalr	-404(ra) # 800031d0 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    8000336c:	00a00513          	li	a0,10
    80003370:	00000097          	auipc	ra,0x0
    80003374:	e60080e7          	jalr	-416(ra) # 800031d0 <_ZN8KConsole18putCharacterOutputEc>
    80003378:	fbdff06f          	j	80003334 <_ZN8KConsole11getcHandlerEv+0x44>

000000008000337c <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    8000337c:	ff010113          	addi	sp,sp,-16
    80003380:	00813423          	sd	s0,8(sp)
    80003384:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003388:	00005517          	auipc	a0,0x5
    8000338c:	6a053503          	ld	a0,1696(a0) # 80008a28 <_ZN8KConsole11pendingPutcE>
    80003390:	00153513          	seqz	a0,a0
    80003394:	00813403          	ld	s0,8(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret

00000000800033a0 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800033a0:	fe010113          	addi	sp,sp,-32
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	00813823          	sd	s0,16(sp)
    800033ac:	02010413          	addi	s0,sp,32
    800033b0:	0180006f          	j	800033c8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit_kernel();
    800033b4:	ffffe097          	auipc	ra,0xffffe
    800033b8:	ecc080e7          	jalr	-308(ra) # 80001280 <_Z18thread_exit_kernelv>
    800033bc:	0340006f          	j	800033f0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch_kernel();
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	e78080e7          	jalr	-392(ra) # 80001238 <_Z22thread_dispatch_kernelv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800033c8:	00005797          	auipc	a5,0x5
    800033cc:	5807b783          	ld	a5,1408(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x88>
    800033d0:	0007c783          	lbu	a5,0(a5)
    800033d4:	00078e63          	beqz	a5,800033f0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	fa4080e7          	jalr	-92(ra) # 8000337c <_ZN8KConsole17outputBufferEmptyEv>
    800033e0:	00050863          	beqz	a0,800033f0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800033e4:	00005797          	auipc	a5,0x5
    800033e8:	62c7b783          	ld	a5,1580(a5) # 80008a10 <_ZN8KConsole11pendingGetcE>
    800033ec:	fc0784e3          	beqz	a5,800033b4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800033f0:	00005797          	auipc	a5,0x5
    800033f4:	4e07b783          	ld	a5,1248(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x10>
    800033f8:	0007b783          	ld	a5,0(a5)
    800033fc:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003400:	0207f793          	andi	a5,a5,32
    80003404:	fa078ee3          	beqz	a5,800033c0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003408:	00005797          	auipc	a5,0x5
    8000340c:	6207b783          	ld	a5,1568(a5) # 80008a28 <_ZN8KConsole11pendingPutcE>
    80003410:	fa0788e3          	beqz	a5,800033c0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003414:	ffffe097          	auipc	ra,0xffffe
    80003418:	e44080e7          	jalr	-444(ra) # 80001258 <_Z20sysCallGetCharOutputv>
    8000341c:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003420:	00005717          	auipc	a4,0x5
    80003424:	5d070713          	addi	a4,a4,1488 # 800089f0 <_ZN8KConsole18hasCharactersInputE>
    80003428:	03873783          	ld	a5,56(a4)
    8000342c:	fff78793          	addi	a5,a5,-1
    80003430:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003434:	00005797          	auipc	a5,0x5
    80003438:	4947b783          	ld	a5,1172(a5) # 800088c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000343c:	0007b783          	ld	a5,0(a5)
    80003440:	fef44703          	lbu	a4,-17(s0)
    80003444:	00e78023          	sb	a4,0(a5)
    80003448:	f81ff06f          	j	800033c8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

000000008000344c <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    8000344c:	ff010113          	addi	sp,sp,-16
    80003450:	00113423          	sd	ra,8(sp)
    80003454:	00813023          	sd	s0,0(sp)
    80003458:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    8000345c:	00000097          	auipc	ra,0x0
    80003460:	dec080e7          	jalr	-532(ra) # 80003248 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003464:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003468:	00001097          	auipc	ra,0x1
    8000346c:	ee8080e7          	jalr	-280(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003470:	00813083          	ld	ra,8(sp)
    80003474:	00013403          	ld	s0,0(sp)
    80003478:	01010113          	addi	sp,sp,16
    8000347c:	00008067          	ret

0000000080003480 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003480:	fe010113          	addi	sp,sp,-32
    80003484:	00113c23          	sd	ra,24(sp)
    80003488:	00813823          	sd	s0,16(sp)
    8000348c:	00913423          	sd	s1,8(sp)
    80003490:	02010413          	addi	s0,sp,32
    80003494:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003498:	0004c503          	lbu	a0,0(s1)
    8000349c:	00050a63          	beqz	a0,800034b0 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800034a0:	00000097          	auipc	ra,0x0
    800034a4:	d30080e7          	jalr	-720(ra) # 800031d0 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800034a8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800034ac:	fedff06f          	j	80003498 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800034b0:	01813083          	ld	ra,24(sp)
    800034b4:	01013403          	ld	s0,16(sp)
    800034b8:	00813483          	ld	s1,8(sp)
    800034bc:	02010113          	addi	sp,sp,32
    800034c0:	00008067          	ret

00000000800034c4 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800034c4:	fb010113          	addi	sp,sp,-80
    800034c8:	04113423          	sd	ra,72(sp)
    800034cc:	04813023          	sd	s0,64(sp)
    800034d0:	02913c23          	sd	s1,56(sp)
    800034d4:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800034d8:	00005797          	auipc	a5,0x5
    800034dc:	e9078793          	addi	a5,a5,-368 # 80008368 <CONSOLE_STATUS+0x358>
    800034e0:	0007b703          	ld	a4,0(a5)
    800034e4:	fce43423          	sd	a4,-56(s0)
    800034e8:	0087b703          	ld	a4,8(a5)
    800034ec:	fce43823          	sd	a4,-48(s0)
    800034f0:	0107c783          	lbu	a5,16(a5)
    800034f4:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    800034f8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800034fc:	02b57733          	remu	a4,a0,a1
    80003500:	fe040693          	addi	a3,s0,-32
    80003504:	00e68733          	add	a4,a3,a4
    80003508:	fe874703          	lbu	a4,-24(a4)
    8000350c:	009687b3          	add	a5,a3,s1
    80003510:	0014849b          	addiw	s1,s1,1
    80003514:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003518:	00050793          	mv	a5,a0
    8000351c:	02b55533          	divu	a0,a0,a1
    80003520:	fcb7fee3          	bgeu	a5,a1,800034fc <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003524:	fff4849b          	addiw	s1,s1,-1
    80003528:	0004ce63          	bltz	s1,80003544 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    8000352c:	fe040793          	addi	a5,s0,-32
    80003530:	009787b3          	add	a5,a5,s1
    80003534:	fd87c503          	lbu	a0,-40(a5)
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	c98080e7          	jalr	-872(ra) # 800031d0 <_ZN8KConsole18putCharacterOutputEc>
    80003540:	fe5ff06f          	j	80003524 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003544:	04813083          	ld	ra,72(sp)
    80003548:	04013403          	ld	s0,64(sp)
    8000354c:	03813483          	ld	s1,56(sp)
    80003550:	05010113          	addi	sp,sp,80
    80003554:	00008067          	ret

0000000080003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003558:	fe010113          	addi	sp,sp,-32
    8000355c:	00113c23          	sd	ra,24(sp)
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00913423          	sd	s1,8(sp)
    80003568:	01213023          	sd	s2,0(sp)
    8000356c:	02010413          	addi	s0,sp,32
    80003570:	00058493          	mv	s1,a1
    80003574:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	f08080e7          	jalr	-248(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    80003580:	00000613          	li	a2,0
    80003584:	00090593          	mv	a1,s2
    80003588:	00048513          	mv	a0,s1
    8000358c:	00000097          	auipc	ra,0x0
    80003590:	f38080e7          	jalr	-200(ra) # 800034c4 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    80003594:	00005517          	auipc	a0,0x5
    80003598:	bec50513          	addi	a0,a0,-1044 # 80008180 <CONSOLE_STATUS+0x170>
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	ee4080e7          	jalr	-284(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
}
    800035a4:	01813083          	ld	ra,24(sp)
    800035a8:	01013403          	ld	s0,16(sp)
    800035ac:	00813483          	ld	s1,8(sp)
    800035b0:	00013903          	ld	s2,0(sp)
    800035b4:	02010113          	addi	sp,sp,32
    800035b8:	00008067          	ret

00000000800035bc <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800035bc:	ff010113          	addi	sp,sp,-16
    800035c0:	00813423          	sd	s0,8(sp)
    800035c4:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800035c8:	00005797          	auipc	a5,0x5
    800035cc:	3907b783          	ld	a5,912(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x98>
    800035d0:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800035d4:	00500793          	li	a5,5
    800035d8:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800035dc:	0000d797          	auipc	a5,0xd
    800035e0:	45c7b783          	ld	a5,1116(a5) # 80010a38 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800035e4:	00000593          	li	a1,0
    while(curr != 0)
    800035e8:	02078063          	beqz	a5,80003608 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800035ec:	02063683          	ld	a3,32(a2)
    800035f0:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800035f4:	00e6e863          	bltu	a3,a4,80003604 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800035f8:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800035fc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003600:	fe9ff06f          	j	800035e8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003604:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003608:	00058a63          	beqz	a1,8000361c <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    8000360c:	00c5b423          	sd	a2,8(a1)
}
    80003610:	00813403          	ld	s0,8(sp)
    80003614:	01010113          	addi	sp,sp,16
    80003618:	00008067          	ret
        sleepingPCBHead = PCB::running;
    8000361c:	0000d797          	auipc	a5,0xd
    80003620:	40c7be23          	sd	a2,1052(a5) # 80010a38 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003624:	fedff06f          	j	80003610 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003628 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003628:	0000d517          	auipc	a0,0xd
    8000362c:	41053503          	ld	a0,1040(a0) # 80010a38 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003630:	06050e63          	beqz	a0,800036ac <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003634:	06050c63          	beqz	a0,800036ac <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003638:	02053783          	ld	a5,32(a0)
    8000363c:	00005717          	auipc	a4,0x5
    80003640:	2e473703          	ld	a4,740(a4) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003644:	00073703          	ld	a4,0(a4)
    80003648:	06f76263          	bltu	a4,a5,800036ac <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    8000364c:	fe010113          	addi	sp,sp,-32
    80003650:	00113c23          	sd	ra,24(sp)
    80003654:	00813823          	sd	s0,16(sp)
    80003658:	00913423          	sd	s1,8(sp)
    8000365c:	02010413          	addi	s0,sp,32
    80003660:	0180006f          	j	80003678 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003664:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003668:	00005717          	auipc	a4,0x5
    8000366c:	2b873703          	ld	a4,696(a4) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003670:	00073703          	ld	a4,0(a4)
    80003674:	02f76263          	bltu	a4,a5,80003698 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003678:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    8000367c:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003680:	00000097          	auipc	ra,0x0
    80003684:	0b8080e7          	jalr	184(ra) # 80003738 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003688:	0000d797          	auipc	a5,0xd
    8000368c:	3a97b823          	sd	s1,944(a5) # 80010a38 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003690:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003694:	fc0498e3          	bnez	s1,80003664 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003698:	01813083          	ld	ra,24(sp)
    8000369c:	01013403          	ld	s0,16(sp)
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	02010113          	addi	sp,sp,32
    800036a8:	00008067          	ret
    800036ac:	00008067          	ret

00000000800036b0 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800036b0:	ff010113          	addi	sp,sp,-16
    800036b4:	00113423          	sd	ra,8(sp)
    800036b8:	00813023          	sd	s0,0(sp)
    800036bc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800036c0:	00001097          	auipc	ra,0x1
    800036c4:	3c4080e7          	jalr	964(ra) # 80004a84 <_ZN15MemoryAllocator7kmallocEm>
}
    800036c8:	00813083          	ld	ra,8(sp)
    800036cc:	00013403          	ld	s0,0(sp)
    800036d0:	01010113          	addi	sp,sp,16
    800036d4:	00008067          	ret

00000000800036d8 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800036d8:	ff010113          	addi	sp,sp,-16
    800036dc:	00113423          	sd	ra,8(sp)
    800036e0:	00813023          	sd	s0,0(sp)
    800036e4:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	40c080e7          	jalr	1036(ra) # 80004af4 <_ZN15MemoryAllocator5kfreeEPv>
}
    800036f0:	00813083          	ld	ra,8(sp)
    800036f4:	00013403          	ld	s0,0(sp)
    800036f8:	01010113          	addi	sp,sp,16
    800036fc:	00008067          	ret

0000000080003700 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003700:	ff010113          	addi	sp,sp,-16
    80003704:	00813423          	sd	s0,8(sp)
    80003708:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000370c:	0000d797          	auipc	a5,0xd
    80003710:	3347b783          	ld	a5,820(a5) # 80010a40 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003714:	00000513          	li	a0,0
    while(curr != 0)
    80003718:	00078863          	beqz	a5,80003728 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000371c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003720:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003724:	ff5ff06f          	j	80003718 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003728:	0005051b          	sext.w	a0,a0
    8000372c:	00813403          	ld	s0,8(sp)
    80003730:	01010113          	addi	sp,sp,16
    80003734:	00008067          	ret

0000000080003738 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003738:	ff010113          	addi	sp,sp,-16
    8000373c:	00813423          	sd	s0,8(sp)
    80003740:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003744:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003748:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    8000374c:	0000d797          	auipc	a5,0xd
    80003750:	2f47b783          	ld	a5,756(a5) # 80010a40 <_ZN9Scheduler16schedulerPCBHeadE>
    80003754:	02078263          	beqz	a5,80003778 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003758:	0000d797          	auipc	a5,0xd
    8000375c:	2e878793          	addi	a5,a5,744 # 80010a40 <_ZN9Scheduler16schedulerPCBHeadE>
    80003760:	0087b703          	ld	a4,8(a5)
    80003764:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003768:	00a7b423          	sd	a0,8(a5)
    }
}
    8000376c:	00813403          	ld	s0,8(sp)
    80003770:	01010113          	addi	sp,sp,16
    80003774:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003778:	0000d797          	auipc	a5,0xd
    8000377c:	2c878793          	addi	a5,a5,712 # 80010a40 <_ZN9Scheduler16schedulerPCBHeadE>
    80003780:	00a7b423          	sd	a0,8(a5)
    80003784:	00a7b023          	sd	a0,0(a5)
    80003788:	fe5ff06f          	j	8000376c <_ZN9Scheduler3putEP3PCB+0x34>

000000008000378c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    8000378c:	ff010113          	addi	sp,sp,-16
    80003790:	00813423          	sd	s0,8(sp)
    80003794:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003798:	0000d517          	auipc	a0,0xd
    8000379c:	2a853503          	ld	a0,680(a0) # 80010a40 <_ZN9Scheduler16schedulerPCBHeadE>
    800037a0:	00050c63          	beqz	a0,800037b8 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800037a4:	00853783          	ld	a5,8(a0)
    800037a8:	00078e63          	beqz	a5,800037c4 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800037ac:	0000d717          	auipc	a4,0xd
    800037b0:	28f73a23          	sd	a5,660(a4) # 80010a40 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800037b4:	00053423          	sd	zero,8(a0)
    return retval;
}
    800037b8:	00813403          	ld	s0,8(sp)
    800037bc:	01010113          	addi	sp,sp,16
    800037c0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800037c4:	0000d797          	auipc	a5,0xd
    800037c8:	27c78793          	addi	a5,a5,636 # 80010a40 <_ZN9Scheduler16schedulerPCBHeadE>
    800037cc:	0007b423          	sd	zero,8(a5)
    800037d0:	0007b023          	sd	zero,0(a5)
    800037d4:	fe1ff06f          	j	800037b4 <_ZN9Scheduler3getEv+0x28>

00000000800037d8 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    800037d8:	fe010113          	addi	sp,sp,-32
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	00813823          	sd	s0,16(sp)
    800037e4:	00913423          	sd	s1,8(sp)
    800037e8:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    800037ec:	0000d497          	auipc	s1,0xd
    800037f0:	2544b483          	ld	s1,596(s1) # 80010a40 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800037f4:	02048863          	beqz	s1,80003824 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    800037f8:	00000613          	li	a2,0
    800037fc:	01000593          	li	a1,16
    80003800:	00048513          	mv	a0,s1
    80003804:	00000097          	auipc	ra,0x0
    80003808:	cc0080e7          	jalr	-832(ra) # 800034c4 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    8000380c:	00005517          	auipc	a0,0x5
    80003810:	97450513          	addi	a0,a0,-1676 # 80008180 <CONSOLE_STATUS+0x170>
    80003814:	00000097          	auipc	ra,0x0
    80003818:	c6c080e7          	jalr	-916(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    8000381c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003820:	fd5ff06f          	j	800037f4 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003824:	01813083          	ld	ra,24(sp)
    80003828:	01013403          	ld	s0,16(sp)
    8000382c:	00813483          	ld	s1,8(sp)
    80003830:	02010113          	addi	sp,sp,32
    80003834:	00008067          	ret

0000000080003838 <main>:
#include "../../h/Riscv.hpp"

void main()
{
    80003838:	ff010113          	addi	sp,sp,-16
    8000383c:	00113423          	sd	ra,8(sp)
    80003840:	00813023          	sd	s0,0(sp)
    80003844:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003848:	00001097          	auipc	ra,0x1
    8000384c:	a94080e7          	jalr	-1388(ra) # 800042dc <_ZN5Riscv10kernelMainEv>
    80003850:	00813083          	ld	ra,8(sp)
    80003854:	00013403          	ld	s0,0(sp)
    80003858:	01010113          	addi	sp,sp,16
    8000385c:	00008067          	ret

0000000080003860 <_Z14buddyInitTest1v>:
#include "../../h/buddyTests.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    80003860:	ff010113          	addi	sp,sp,-16
    80003864:	00113423          	sd	ra,8(sp)
    80003868:	00813023          	sd	s0,0(sp)
    8000386c:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003870:	01200593          	li	a1,18
    80003874:	00005797          	auipc	a5,0x5
    80003878:	0647b783          	ld	a5,100(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000387c:	0007b503          	ld	a0,0(a5)
    80003880:	fffff097          	auipc	ra,0xfffff
    80003884:	4d8080e7          	jalr	1240(ra) # 80002d58 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	628080e7          	jalr	1576(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003890:	00813083          	ld	ra,8(sp)
    80003894:	00013403          	ld	s0,0(sp)
    80003898:	01010113          	addi	sp,sp,16
    8000389c:	00008067          	ret

00000000800038a0 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    800038a0:	fe010113          	addi	sp,sp,-32
    800038a4:	00113c23          	sd	ra,24(sp)
    800038a8:	00813823          	sd	s0,16(sp)
    800038ac:	00913423          	sd	s1,8(sp)
    800038b0:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    800038b4:	00a00593          	li	a1,10
    800038b8:	00005797          	auipc	a5,0x5
    800038bc:	0207b783          	ld	a5,32(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800038c0:	0007b503          	ld	a0,0(a5)
    800038c4:	fffff097          	auipc	ra,0xfffff
    800038c8:	494080e7          	jalr	1172(ra) # 80002d58 <_Z10buddy_initPvm>
    800038cc:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    800038d0:	fffff097          	auipc	ra,0xfffff
    800038d4:	5e0080e7          	jalr	1504(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    800038d8:	00100593          	li	a1,1
    800038dc:	00048513          	mv	a0,s1
    800038e0:	fffff097          	auipc	ra,0xfffff
    800038e4:	268080e7          	jalr	616(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    800038e8:	00048513          	mv	a0,s1
    800038ec:	fffff097          	auipc	ra,0xfffff
    800038f0:	5c4080e7          	jalr	1476(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    800038f4:	00100593          	li	a1,1
    800038f8:	00048513          	mv	a0,s1
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	24c080e7          	jalr	588(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003904:	00048513          	mv	a0,s1
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	5a8080e7          	jalr	1448(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003910:	00100593          	li	a1,1
    80003914:	00048513          	mv	a0,s1
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	230080e7          	jalr	560(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003920:	00048513          	mv	a0,s1
    80003924:	fffff097          	auipc	ra,0xfffff
    80003928:	58c080e7          	jalr	1420(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    8000392c:	00300593          	li	a1,3
    80003930:	00048513          	mv	a0,s1
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	214080e7          	jalr	532(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    8000393c:	00048513          	mv	a0,s1
    80003940:	fffff097          	auipc	ra,0xfffff
    80003944:	570080e7          	jalr	1392(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003948:	01813083          	ld	ra,24(sp)
    8000394c:	01013403          	ld	s0,16(sp)
    80003950:	00813483          	ld	s1,8(sp)
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret

000000008000395c <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    8000395c:	fe010113          	addi	sp,sp,-32
    80003960:	00113c23          	sd	ra,24(sp)
    80003964:	00813823          	sd	s0,16(sp)
    80003968:	00913423          	sd	s1,8(sp)
    8000396c:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003970:	00a00593          	li	a1,10
    80003974:	00005797          	auipc	a5,0x5
    80003978:	f647b783          	ld	a5,-156(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000397c:	0007b503          	ld	a0,0(a5)
    80003980:	fffff097          	auipc	ra,0xfffff
    80003984:	3d8080e7          	jalr	984(ra) # 80002d58 <_Z10buddy_initPvm>
    80003988:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    8000398c:	06400593          	li	a1,100
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	1b8080e7          	jalr	440(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003998:	00050c63          	beqz	a0,800039b0 <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    8000399c:	01813083          	ld	ra,24(sp)
    800039a0:	01013403          	ld	s0,16(sp)
    800039a4:	00813483          	ld	s1,8(sp)
    800039a8:	02010113          	addi	sp,sp,32
    800039ac:	00008067          	ret
        printBuddyInfo(buddy);
    800039b0:	00048513          	mv	a0,s1
    800039b4:	fffff097          	auipc	ra,0xfffff
    800039b8:	4fc080e7          	jalr	1276(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
}
    800039bc:	fe1ff06f          	j	8000399c <_Z20buddyOnlyAllocsTest2v+0x40>

00000000800039c0 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    800039c0:	fd010113          	addi	sp,sp,-48
    800039c4:	02113423          	sd	ra,40(sp)
    800039c8:	02813023          	sd	s0,32(sp)
    800039cc:	00913c23          	sd	s1,24(sp)
    800039d0:	01213823          	sd	s2,16(sp)
    800039d4:	01313423          	sd	s3,8(sp)
    800039d8:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    800039dc:	00a00593          	li	a1,10
    800039e0:	00005797          	auipc	a5,0x5
    800039e4:	ef87b783          	ld	a5,-264(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039e8:	0007b503          	ld	a0,0(a5)
    800039ec:	fffff097          	auipc	ra,0xfffff
    800039f0:	36c080e7          	jalr	876(ra) # 80002d58 <_Z10buddy_initPvm>
    800039f4:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	4b8080e7          	jalr	1208(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003a00:	00100593          	li	a1,1
    80003a04:	00048513          	mv	a0,s1
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	140080e7          	jalr	320(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    80003a10:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003a14:	00048513          	mv	a0,s1
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	498080e7          	jalr	1176(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003a20:	00100613          	li	a2,1
    80003a24:	00090593          	mv	a1,s2
    80003a28:	00048513          	mv	a0,s1
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	40c080e7          	jalr	1036(ra) # 80002e38 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003a34:	00048513          	mv	a0,s1
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	478080e7          	jalr	1144(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003a40:	00200593          	li	a1,2
    80003a44:	00048513          	mv	a0,s1
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	100080e7          	jalr	256(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    80003a50:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003a54:	00300593          	li	a1,3
    80003a58:	00048513          	mv	a0,s1
    80003a5c:	fffff097          	auipc	ra,0xfffff
    80003a60:	0ec080e7          	jalr	236(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    80003a64:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003a68:	00048513          	mv	a0,s1
    80003a6c:	fffff097          	auipc	ra,0xfffff
    80003a70:	444080e7          	jalr	1092(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003a74:	00200613          	li	a2,2
    80003a78:	00090593          	mv	a1,s2
    80003a7c:	00048513          	mv	a0,s1
    80003a80:	fffff097          	auipc	ra,0xfffff
    80003a84:	3b8080e7          	jalr	952(ra) # 80002e38 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003a88:	00048513          	mv	a0,s1
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	424080e7          	jalr	1060(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003a94:	00100593          	li	a1,1
    80003a98:	00048513          	mv	a0,s1
    80003a9c:	fffff097          	auipc	ra,0xfffff
    80003aa0:	0ac080e7          	jalr	172(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    80003aa4:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003aa8:	00048513          	mv	a0,s1
    80003aac:	fffff097          	auipc	ra,0xfffff
    80003ab0:	404080e7          	jalr	1028(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003ab4:	00300613          	li	a2,3
    80003ab8:	00098593          	mv	a1,s3
    80003abc:	00048513          	mv	a0,s1
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	378080e7          	jalr	888(ra) # 80002e38 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	fffff097          	auipc	ra,0xfffff
    80003ad0:	3e4080e7          	jalr	996(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003ad4:	00100613          	li	a2,1
    80003ad8:	00090593          	mv	a1,s2
    80003adc:	00048513          	mv	a0,s1
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	358080e7          	jalr	856(ra) # 80002e38 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003ae8:	00048513          	mv	a0,s1
    80003aec:	fffff097          	auipc	ra,0xfffff
    80003af0:	3c4080e7          	jalr	964(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003af4:	02813083          	ld	ra,40(sp)
    80003af8:	02013403          	ld	s0,32(sp)
    80003afc:	01813483          	ld	s1,24(sp)
    80003b00:	01013903          	ld	s2,16(sp)
    80003b04:	00813983          	ld	s3,8(sp)
    80003b08:	03010113          	addi	sp,sp,48
    80003b0c:	00008067          	ret

0000000080003b10 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003b10:	fc010113          	addi	sp,sp,-64
    80003b14:	02113c23          	sd	ra,56(sp)
    80003b18:	02813823          	sd	s0,48(sp)
    80003b1c:	02913423          	sd	s1,40(sp)
    80003b20:	03213023          	sd	s2,32(sp)
    80003b24:	01313c23          	sd	s3,24(sp)
    80003b28:	01413823          	sd	s4,16(sp)
    80003b2c:	01513423          	sd	s5,8(sp)
    80003b30:	04010413          	addi	s0,sp,64
    size_t mask = ((size_t)-1) << 12;
    buddyAllocator* buddy = (buddyAllocator*)(((size_t)HEAP_START_ADDR & mask) + (1 << 12));
    80003b34:	00005797          	auipc	a5,0x5
    80003b38:	da47b783          	ld	a5,-604(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b3c:	0007b983          	ld	s3,0(a5)
    80003b40:	fffff7b7          	lui	a5,0xfffff
    80003b44:	00f9f9b3          	and	s3,s3,a5
    80003b48:	000017b7          	lui	a5,0x1
    80003b4c:	00f989b3          	add	s3,s3,a5
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003b50:	0000a537          	lui	a0,0xa
    80003b54:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003b58:	00001097          	auipc	ra,0x1
    80003b5c:	f2c080e7          	jalr	-212(ra) # 80004a84 <_ZN15MemoryAllocator7kmallocEm>
    80003b60:	00050a13          	mv	s4,a0
    printBuddyInfo(buddy);
    80003b64:	00098513          	mv	a0,s3
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	348080e7          	jalr	840(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
    for(int i = 0; i < 5000;i++)
    80003b70:	00000493          	li	s1,0
    80003b74:	0080006f          	j	80003b7c <_Z13buddyTestMixav+0x6c>
    80003b78:	0014849b          	addiw	s1,s1,1
    80003b7c:	000017b7          	lui	a5,0x1
    80003b80:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003b84:	0697c463          	blt	a5,s1,80003bec <_Z13buddyTestMixav+0xdc>
    {
        x[i] = buddy_alloc(buddy, 2);
    80003b88:	00349913          	slli	s2,s1,0x3
    80003b8c:	012a0933          	add	s2,s4,s2
    80003b90:	00200593          	li	a1,2
    80003b94:	00098513          	mv	a0,s3
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	fb0080e7          	jalr	-80(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    80003ba0:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003ba4:	fc051ae3          	bnez	a0,80003b78 <_Z13buddyTestMixav+0x68>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003ba8:	00a00613          	li	a2,10
    80003bac:	00048593          	mv	a1,s1
    80003bb0:	00004517          	auipc	a0,0x4
    80003bb4:	7d050513          	addi	a0,a0,2000 # 80008380 <CONSOLE_STATUS+0x370>
    80003bb8:	00000097          	auipc	ra,0x0
    80003bbc:	9a0080e7          	jalr	-1632(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003bc0:	00000913          	li	s2,0
    80003bc4:	02995463          	bge	s2,s1,80003bec <_Z13buddyTestMixav+0xdc>
            {
                buddy_free(buddy, x[j], 2);
    80003bc8:	00391793          	slli	a5,s2,0x3
    80003bcc:	00fa07b3          	add	a5,s4,a5
    80003bd0:	00200613          	li	a2,2
    80003bd4:	0007b583          	ld	a1,0(a5)
    80003bd8:	00098513          	mv	a0,s3
    80003bdc:	fffff097          	auipc	ra,0xfffff
    80003be0:	25c080e7          	jalr	604(ra) # 80002e38 <_Z10buddy_freeP14buddyAllocatorPvm>
            for(int j = 0;j < i;j++)
    80003be4:	0019091b          	addiw	s2,s2,1
    80003be8:	fddff06f          	j	80003bc4 <_Z13buddyTestMixav+0xb4>
            }
            break;
        }
    }
    printBuddyInfo(buddy);
    80003bec:	00098513          	mv	a0,s3
    80003bf0:	fffff097          	auipc	ra,0xfffff
    80003bf4:	2c0080e7          	jalr	704(ra) # 80002eb0 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003bf8:	03813083          	ld	ra,56(sp)
    80003bfc:	03013403          	ld	s0,48(sp)
    80003c00:	02813483          	ld	s1,40(sp)
    80003c04:	02013903          	ld	s2,32(sp)
    80003c08:	01813983          	ld	s3,24(sp)
    80003c0c:	01013a03          	ld	s4,16(sp)
    80003c10:	00813a83          	ld	s5,8(sp)
    80003c14:	04010113          	addi	sp,sp,64
    80003c18:	00008067          	ret

0000000080003c1c <_ZN5Riscv20initMemoryAllocationEv>:
extern char *kernelDataStart;
extern char *userTextStart;
extern char *etext;

void Riscv::initMemoryAllocation()
{
    80003c1c:	ff010113          	addi	sp,sp,-16
    80003c20:	00113423          	sd	ra,8(sp)
    80003c24:	00813023          	sd	s0,0(sp)
    80003c28:	01010413          	addi	s0,sp,16
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80003c2c:	00005797          	auipc	a5,0x5
    80003c30:	cac7b783          	ld	a5,-852(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003c34:	0007b503          	ld	a0,0(a5)
    80003c38:	00005797          	auipc	a5,0x5
    80003c3c:	d287b783          	ld	a5,-728(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80003c40:	0007b783          	ld	a5,0(a5)
    80003c44:	40a787b3          	sub	a5,a5,a0
    80003c48:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80003c4c:	00a00713          	li	a4,10
    80003c50:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80003c54:	00001737          	lui	a4,0x1
    80003c58:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80003c5c:	00e787b3          	add	a5,a5,a4

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80003c60:	fffff737          	lui	a4,0xfffff
    80003c64:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80003c68:	00f50533          	add	a0,a0,a5
    80003c6c:	00001097          	auipc	ra,0x1
    80003c70:	a28080e7          	jalr	-1496(ra) # 80004694 <_ZN15MemoryAllocator10initMemoryEPv>

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}
    80003c74:	00813083          	ld	ra,8(sp)
    80003c78:	00013403          	ld	s0,0(sp)
    80003c7c:	01010113          	addi	sp,sp,16
    80003c80:	00008067          	ret

0000000080003c84 <_ZN5Riscv17initVirtualMemoryEv>:

void Riscv::initVirtualMemory()
{
    80003c84:	ff010113          	addi	sp,sp,-16
    80003c88:	00813423          	sd	s0,8(sp)
    80003c8c:	01010413          	addi	s0,sp,16

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t

}
    80003c90:	00813403          	ld	s0,8(sp)
    80003c94:	01010113          	addi	sp,sp,16
    80003c98:	00008067          	ret

0000000080003c9c <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch_kernel();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003c9c:	ff010113          	addi	sp,sp,-16
    80003ca0:	00813423          	sd	s0,8(sp)
    80003ca4:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003ca8:	00200793          	li	a5,2
    80003cac:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003cb0:	00813403          	ld	s0,8(sp)
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret

0000000080003cbc <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003cbc:	ff010113          	addi	sp,sp,-16
    80003cc0:	00813423          	sd	s0,8(sp)
    80003cc4:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003cc8:	00200793          	li	a5,2
    80003ccc:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003cd0:	00813403          	ld	s0,8(sp)
    80003cd4:	01010113          	addi	sp,sp,16
    80003cd8:	00008067          	ret

0000000080003cdc <_ZN5Riscv9endSystemEv>:
{
    80003cdc:	ff010113          	addi	sp,sp,-16
    80003ce0:	00113423          	sd	ra,8(sp)
    80003ce4:	00813023          	sd	s0,0(sp)
    80003ce8:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80003cec:	00000097          	auipc	ra,0x0
    80003cf0:	fd0080e7          	jalr	-48(ra) # 80003cbc <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80003cf4:	00100793          	li	a5,1
    80003cf8:	0000d717          	auipc	a4,0xd
    80003cfc:	d4f70c23          	sb	a5,-680(a4) # 80010a50 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80003d00:	00000097          	auipc	ra,0x0
    80003d04:	a8c080e7          	jalr	-1396(ra) # 8000378c <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80003d08:	fe051ce3          	bnez	a0,80003d00 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80003d0c:	00005797          	auipc	a5,0x5
    80003d10:	c2c7b783          	ld	a5,-980(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003d14:	0007b503          	ld	a0,0(a5)
    80003d18:	00000097          	auipc	ra,0x0
    80003d1c:	a20080e7          	jalr	-1504(ra) # 80003738 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80003d20:	00005797          	auipc	a5,0x5
    80003d24:	be07b783          	ld	a5,-1056(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003d28:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80003d2c:	00000097          	auipc	ra,0x0
    80003d30:	f70080e7          	jalr	-144(ra) # 80003c9c <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80003d34:	00005797          	auipc	a5,0x5
    80003d38:	c047b783          	ld	a5,-1020(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003d3c:	0007b503          	ld	a0,0(a5)
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	928080e7          	jalr	-1752(ra) # 80002668 <_ZN3PCB10isFinishedEv>
    80003d48:	00051863          	bnez	a0,80003d58 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch_kernel();
    80003d4c:	ffffd097          	auipc	ra,0xffffd
    80003d50:	4ec080e7          	jalr	1260(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::consolePCB->isFinished())
    80003d54:	fe1ff06f          	j	80003d34 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80003d58:	00000097          	auipc	ra,0x0
    80003d5c:	f64080e7          	jalr	-156(ra) # 80003cbc <_ZN5Riscv17disableInterruptsEv>
}
    80003d60:	00813083          	ld	ra,8(sp)
    80003d64:	00013403          	ld	s0,0(sp)
    80003d68:	01010113          	addi	sp,sp,16
    80003d6c:	00008067          	ret

0000000080003d70 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003d70:	ff010113          	addi	sp,sp,-16
    80003d74:	00813423          	sd	s0,8(sp)
    80003d78:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread) {
    80003d7c:	00005797          	auipc	a5,0x5
    80003d80:	bdc7b783          	ld	a5,-1060(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x98>
    80003d84:	0007b783          	ld	a5,0(a5)
    80003d88:	0007c703          	lbu	a4,0(a5)
    80003d8c:	00070c63          	beqz	a4,80003da4 <_ZN5Riscv10popSppSpieEv+0x34>
        __asm__ volatile ("csrw sepc, ra");
    80003d90:	14109073          	csrw	sepc,ra
        __asm__ volatile ("sret");
    80003d94:	10200073          	sret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
        __asm__ volatile ("sret");
    }
}
    80003d98:	00813403          	ld	s0,8(sp)
    80003d9c:	01010113          	addi	sp,sp,16
    80003da0:	00008067          	ret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
    80003da4:	0287b703          	ld	a4,40(a5)
    80003da8:	00070513          	mv	a0,a4
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
    80003dac:	0307b783          	ld	a5,48(a5)
    80003db0:	00078593          	mv	a1,a5
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
    80003db4:	00005797          	auipc	a5,0x5
    80003db8:	bbc7b783          	ld	a5,-1092(a5) # 80008970 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80003dbc:	14179073          	csrw	sepc,a5
        __asm__ volatile ("sret");
    80003dc0:	10200073          	sret
}
    80003dc4:	fd5ff06f          	j	80003d98 <_ZN5Riscv10popSppSpieEv+0x28>

0000000080003dc8 <_ZN5Riscv14setVirtualAddrEmmm>:

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    80003dc8:	fb010113          	addi	sp,sp,-80
    80003dcc:	04113423          	sd	ra,72(sp)
    80003dd0:	04813023          	sd	s0,64(sp)
    80003dd4:	02913c23          	sd	s1,56(sp)
    80003dd8:	03213823          	sd	s2,48(sp)
    80003ddc:	03313423          	sd	s3,40(sp)
    80003de0:	03413023          	sd	s4,32(sp)
    80003de4:	01513c23          	sd	s5,24(sp)
    80003de8:	01613823          	sd	s6,16(sp)
    80003dec:	01713423          	sd	s7,8(sp)
    80003df0:	05010413          	addi	s0,sp,80
    80003df4:	00058993          	mv	s3,a1
    80003df8:	00060a13          	mv	s4,a2
    size_t l2 = addr >> 30;
    80003dfc:	01e55b93          	srli	s7,a0,0x1e
    size_t l1 = (addr >> 21) & (0x1ff);
    80003e00:	01555b13          	srli	s6,a0,0x15
    80003e04:	1ffb7b13          	andi	s6,s6,511
    size_t l0 = (addr >> 12) & (0x1ff);
    80003e08:	00c55493          	srli	s1,a0,0xc
    80003e0c:	1ff4f913          	andi	s2,s1,511
    //size_t offset = addr & 0xfff;
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    80003e10:	003b9b93          	slli	s7,s7,0x3
    80003e14:	0000d797          	auipc	a5,0xd
    80003e18:	c447b783          	ld	a5,-956(a5) # 80010a58 <_ZN5Riscv7mainPMTE>
    80003e1c:	017787b3          	add	a5,a5,s7
    80003e20:	0007b503          	ld	a0,0(a5)
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    80003e24:	06050663          	beqz	a0,80003e90 <_ZN5Riscv14setVirtualAddrEmmm+0xc8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    80003e28:	00a55513          	srli	a0,a0,0xa
    80003e2c:	00c51513          	slli	a0,a0,0xc
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    80003e30:	003b1a93          	slli	s5,s6,0x3
    80003e34:	01550ab3          	add	s5,a0,s5
    80003e38:	000ab503          	ld	a0,0(s5)
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    80003e3c:	0a050463          	beqz	a0,80003ee4 <_ZN5Riscv14setVirtualAddrEmmm+0x11c>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    80003e40:	00a55513          	srli	a0,a0,0xa
    80003e44:	00c51513          	slli	a0,a0,0xc
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    80003e48:	00391913          	slli	s2,s2,0x3
    80003e4c:	01250533          	add	a0,a0,s2
    80003e50:	00053783          	ld	a5,0(a0)
    if(pmt0Desc == 0)
    80003e54:	00079863          	bnez	a5,80003e64 <_ZN5Riscv14setVirtualAddrEmmm+0x9c>
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    80003e58:	00a49493          	slli	s1,s1,0xa
    80003e5c:	0144ea33          	or	s4,s1,s4
    80003e60:	01453023          	sd	s4,0(a0)
    }
}
    80003e64:	04813083          	ld	ra,72(sp)
    80003e68:	04013403          	ld	s0,64(sp)
    80003e6c:	03813483          	ld	s1,56(sp)
    80003e70:	03013903          	ld	s2,48(sp)
    80003e74:	02813983          	ld	s3,40(sp)
    80003e78:	02013a03          	ld	s4,32(sp)
    80003e7c:	01813a83          	ld	s5,24(sp)
    80003e80:	01013b03          	ld	s6,16(sp)
    80003e84:	00813b83          	ld	s7,8(sp)
    80003e88:	05010113          	addi	sp,sp,80
    80003e8c:	00008067          	ret
        pmt1 = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    80003e90:	00100593          	li	a1,1
    80003e94:	0000d517          	auipc	a0,0xd
    80003e98:	bcc53503          	ld	a0,-1076(a0) # 80010a60 <_ZN5Riscv10riscvBuddyE>
    80003e9c:	fffff097          	auipc	ra,0xfffff
    80003ea0:	cac080e7          	jalr	-852(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
        for(int i = 0; i < (1 << 9);i++)
    80003ea4:	00000793          	li	a5,0
    80003ea8:	1ff00713          	li	a4,511
    80003eac:	00f74c63          	blt	a4,a5,80003ec4 <_ZN5Riscv14setVirtualAddrEmmm+0xfc>
            ((size_t*)pmt1)[i] = 0;
    80003eb0:	00379713          	slli	a4,a5,0x3
    80003eb4:	00e50733          	add	a4,a0,a4
    80003eb8:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < (1 << 9);i++)
    80003ebc:	0017879b          	addiw	a5,a5,1
    80003ec0:	fe9ff06f          	j	80003ea8 <_ZN5Riscv14setVirtualAddrEmmm+0xe0>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
    80003ec4:	00c55793          	srli	a5,a0,0xc
    80003ec8:	00a79793          	slli	a5,a5,0xa
    80003ecc:	0137e7b3          	or	a5,a5,s3
        ((size_t*)mainPMT)[l2] = newDesc;
    80003ed0:	0000d717          	auipc	a4,0xd
    80003ed4:	b8873703          	ld	a4,-1144(a4) # 80010a58 <_ZN5Riscv7mainPMTE>
    80003ed8:	01770bb3          	add	s7,a4,s7
    80003edc:	00fbb023          	sd	a5,0(s7)
    80003ee0:	f51ff06f          	j	80003e30 <_ZN5Riscv14setVirtualAddrEmmm+0x68>
        pmt0 = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    80003ee4:	00100593          	li	a1,1
    80003ee8:	0000d517          	auipc	a0,0xd
    80003eec:	b7853503          	ld	a0,-1160(a0) # 80010a60 <_ZN5Riscv10riscvBuddyE>
    80003ef0:	fffff097          	auipc	ra,0xfffff
    80003ef4:	c58080e7          	jalr	-936(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
        for(int i = 0; i < (1 << 9);i++)
    80003ef8:	00000793          	li	a5,0
    80003efc:	1ff00713          	li	a4,511
    80003f00:	00f74c63          	blt	a4,a5,80003f18 <_ZN5Riscv14setVirtualAddrEmmm+0x150>
            ((size_t*)pmt0)[i] = 0;
    80003f04:	00379713          	slli	a4,a5,0x3
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < (1 << 9);i++)
    80003f10:	0017879b          	addiw	a5,a5,1
    80003f14:	fe9ff06f          	j	80003efc <_ZN5Riscv14setVirtualAddrEmmm+0x134>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
    80003f18:	00c55793          	srli	a5,a0,0xc
    80003f1c:	00a79793          	slli	a5,a5,0xa
    80003f20:	0137e9b3          	or	s3,a5,s3
        ((size_t*)pmt1)[l1] = newDesc;
    80003f24:	013ab023          	sd	s3,0(s5)
    80003f28:	f21ff06f          	j	80003e48 <_ZN5Riscv14setVirtualAddrEmmm+0x80>

0000000080003f2c <_ZN5Riscv10initSystemEv>:
{
    80003f2c:	fc010113          	addi	sp,sp,-64
    80003f30:	02113c23          	sd	ra,56(sp)
    80003f34:	02813823          	sd	s0,48(sp)
    80003f38:	02913423          	sd	s1,40(sp)
    80003f3c:	03213023          	sd	s2,32(sp)
    80003f40:	01313c23          	sd	s3,24(sp)
    80003f44:	01413823          	sd	s4,16(sp)
    80003f48:	01513423          	sd	s5,8(sp)
    80003f4c:	01613023          	sd	s6,0(sp)
    80003f50:	04010413          	addi	s0,sp,64
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003f54:	00005797          	auipc	a5,0x5
    80003f58:	9947b783          	ld	a5,-1644(a5) # 800088e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003f5c:	10579073          	csrw	stvec,a5
    riscvBuddy = (void*)getBlockAddr((size_t)HEAP_START_ADDR);
    80003f60:	00005997          	auipc	s3,0x5
    80003f64:	9789b983          	ld	s3,-1672(s3) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003f68:	0009b503          	ld	a0,0(s3)
    80003f6c:	fffff097          	auipc	ra,0xfffff
    80003f70:	9dc080e7          	jalr	-1572(ra) # 80002948 <_Z12getBlockAddrm>
    80003f74:	0000d917          	auipc	s2,0xd
    80003f78:	adc90913          	addi	s2,s2,-1316 # 80010a50 <_ZN5Riscv12finishSystemE>
    80003f7c:	00a93823          	sd	a0,16(s2)
    size_t heapStartBlock = getBlockAddr((size_t)HEAP_START_ADDR);
    80003f80:	0009b503          	ld	a0,0(s3)
    80003f84:	fffff097          	auipc	ra,0xfffff
    80003f88:	9c4080e7          	jalr	-1596(ra) # 80002948 <_Z12getBlockAddrm>
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80003f8c:	00005797          	auipc	a5,0x5
    80003f90:	9d47b783          	ld	a5,-1580(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80003f94:	0007b783          	ld	a5,0(a5)
    80003f98:	0009b703          	ld	a4,0(s3)
    80003f9c:	40e787b3          	sub	a5,a5,a4
    80003fa0:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80003fa4:	00a00713          	li	a4,10
    80003fa8:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80003fac:	00001737          	lui	a4,0x1
    80003fb0:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80003fb4:	00e787b3          	add	a5,a5,a4
    80003fb8:	00c7da13          	srli	s4,a5,0xc
    void* newStartAddr = (void*)(heapStartBlock + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80003fbc:	fffff4b7          	lui	s1,0xfffff
    80003fc0:	0097f7b3          	and	a5,a5,s1
    80003fc4:	00a784b3          	add	s1,a5,a0
    MemoryAllocator::initMemory(newStartAddr);
    80003fc8:	00048513          	mv	a0,s1
    80003fcc:	00000097          	auipc	ra,0x0
    80003fd0:	6c8080e7          	jalr	1736(ra) # 80004694 <_ZN15MemoryAllocator10initMemoryEPv>
    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80003fd4:	000a059b          	sext.w	a1,s4
    80003fd8:	0009b503          	ld	a0,0(s3)
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	bf8080e7          	jalr	-1032(ra) # 80001bd4 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80003fe4:	00000693          	li	a3,0
    80003fe8:	00000613          	li	a2,0
    80003fec:	06000593          	li	a1,96
    80003ff0:	00004517          	auipc	a0,0x4
    80003ff4:	3a050513          	addi	a0,a0,928 # 80008390 <CONSOLE_STATUS+0x380>
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	d4c080e7          	jalr	-692(ra) # 80001d44 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004000:	00a93c23          	sd	a0,24(s2)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004004:	00000693          	li	a3,0
    80004008:	00000613          	li	a2,0
    8000400c:	01800593          	li	a1,24
    80004010:	00004517          	auipc	a0,0x4
    80004014:	39050513          	addi	a0,a0,912 # 800083a0 <CONSOLE_STATUS+0x390>
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	d2c080e7          	jalr	-724(ra) # 80001d44 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004020:	02a93023          	sd	a0,32(s2)
    PCB::initialize();
    80004024:	ffffe097          	auipc	ra,0xffffe
    80004028:	51c080e7          	jalr	1308(ra) # 80002540 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    8000402c:	fffff097          	auipc	ra,0xfffff
    80004030:	fa0080e7          	jalr	-96(ra) # 80002fcc <_ZN8KConsole10initializeEv>
    mainPMT = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    80004034:	00100593          	li	a1,1
    80004038:	01093503          	ld	a0,16(s2)
    8000403c:	fffff097          	auipc	ra,0xfffff
    80004040:	b0c080e7          	jalr	-1268(ra) # 80002b48 <_Z11buddy_allocP14buddyAllocatorm>
    80004044:	00a93423          	sd	a0,8(s2)
    for(size_t i = 0; i < (1 << 9);i++)
    80004048:	00000793          	li	a5,0
    8000404c:	1ff00713          	li	a4,511
    80004050:	02f76063          	bltu	a4,a5,80004070 <_ZN5Riscv10initSystemEv+0x144>
        ((size_t*)mainPMT)[i] = 0;
    80004054:	00379693          	slli	a3,a5,0x3
    80004058:	0000d717          	auipc	a4,0xd
    8000405c:	a0073703          	ld	a4,-1536(a4) # 80010a58 <_ZN5Riscv7mainPMTE>
    80004060:	00d70733          	add	a4,a4,a3
    80004064:	00073023          	sd	zero,0(a4)
    for(size_t i = 0; i < (1 << 9);i++)
    80004068:	00178793          	addi	a5,a5,1
    8000406c:	fe1ff06f          	j	8000404c <_ZN5Riscv10initSystemEv+0x120>
    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);
    80004070:	01000613          	li	a2,16
    80004074:	0000d597          	auipc	a1,0xd
    80004078:	9e45b583          	ld	a1,-1564(a1) # 80010a58 <_ZN5Riscv7mainPMTE>
    8000407c:	00004517          	auipc	a0,0x4
    80004080:	33c50513          	addi	a0,a0,828 # 800083b8 <CONSOLE_STATUS+0x3a8>
    80004084:	fffff097          	auipc	ra,0xfffff
    80004088:	4d4080e7          	jalr	1236(ra) # 80003558 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    uint64 uTextStart = (uint64)(&userTextStart);
    8000408c:	00005a97          	auipc	s5,0x5
    80004090:	8c4aba83          	ld	s5,-1852(s5) # 80008950 <_GLOBAL_OFFSET_TABLE_+0x90>
    uint64 eText = (uint64)(&etext);
    80004094:	00005a17          	auipc	s4,0x5
    80004098:	8aca3a03          	ld	s4,-1876(s4) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x80>
    uint64 kTextStart = (uint64)(&kernelTextStart);
    8000409c:	00005917          	auipc	s2,0x5
    800040a0:	85493903          	ld	s2,-1964(s2) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x30>
    uint64 kDataStart = (uint64)(&kernelDataStart);
    800040a4:	00005997          	auipc	s3,0x5
    800040a8:	8549b983          	ld	s3,-1964(s3) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x38>
    for(uint64 i=0x80000000;i< uTextStart;i+=4096) {
    800040ac:	00100b13          	li	s6,1
    800040b0:	01fb1b13          	slli	s6,s6,0x1f
    800040b4:	035b7263          	bgeu	s6,s5,800040d8 <_ZN5Riscv10initSystemEv+0x1ac>
        setVirtualAddr(i, 0x1,0xb);
    800040b8:	00b00613          	li	a2,11
    800040bc:	00100593          	li	a1,1
    800040c0:	000b0513          	mv	a0,s6
    800040c4:	00000097          	auipc	ra,0x0
    800040c8:	d04080e7          	jalr	-764(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    for(uint64 i=0x80000000;i< uTextStart;i+=4096) {
    800040cc:	000017b7          	lui	a5,0x1
    800040d0:	00fb0b33          	add	s6,s6,a5
    800040d4:	fe1ff06f          	j	800040b4 <_ZN5Riscv10initSystemEv+0x188>
    for(uint64 i=uTextStart;i<eText;i+=4096) {
    800040d8:	034af263          	bgeu	s5,s4,800040fc <_ZN5Riscv10initSystemEv+0x1d0>
        setVirtualAddr(i, 0x1,0xb);
    800040dc:	00b00613          	li	a2,11
    800040e0:	00100593          	li	a1,1
    800040e4:	000a8513          	mv	a0,s5
    800040e8:	00000097          	auipc	ra,0x0
    800040ec:	ce0080e7          	jalr	-800(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    for(uint64 i=uTextStart;i<eText;i+=4096) {
    800040f0:	000017b7          	lui	a5,0x1
    800040f4:	00fa8ab3          	add	s5,s5,a5
    800040f8:	fe1ff06f          	j	800040d8 <_ZN5Riscv10initSystemEv+0x1ac>
    for(uint64 i = (uint64)(&etext); i<kTextStart;i+=4096){
    800040fc:	032a7263          	bgeu	s4,s2,80004120 <_ZN5Riscv10initSystemEv+0x1f4>
        setVirtualAddr(i, 0x1,0x7);
    80004100:	00700613          	li	a2,7
    80004104:	00100593          	li	a1,1
    80004108:	000a0513          	mv	a0,s4
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	cbc080e7          	jalr	-836(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    for(uint64 i = (uint64)(&etext); i<kTextStart;i+=4096){
    80004114:	000017b7          	lui	a5,0x1
    80004118:	00fa0a33          	add	s4,s4,a5
    8000411c:	fe1ff06f          	j	800040fc <_ZN5Riscv10initSystemEv+0x1d0>
    for(uint64 i=(uint64)(&kernelTextStart);i<kDataStart;i+=4096) {
    80004120:	03397263          	bgeu	s2,s3,80004144 <_ZN5Riscv10initSystemEv+0x218>
        setVirtualAddr(i, 0x1,0x1b); //todo
    80004124:	01b00613          	li	a2,27
    80004128:	00100593          	li	a1,1
    8000412c:	00090513          	mv	a0,s2
    80004130:	00000097          	auipc	ra,0x0
    80004134:	c98080e7          	jalr	-872(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    for(uint64 i=(uint64)(&kernelTextStart);i<kDataStart;i+=4096) {
    80004138:	000017b7          	lui	a5,0x1
    8000413c:	00f90933          	add	s2,s2,a5
    80004140:	fe1ff06f          	j	80004120 <_ZN5Riscv10initSystemEv+0x1f4>
    for(uint64 i=(uint64)&kernelDataStart;i<(uint64)HEAP_START_ADDR;i+=4096) {
    80004144:	00004797          	auipc	a5,0x4
    80004148:	7947b783          	ld	a5,1940(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000414c:	0007b903          	ld	s2,0(a5)
    80004150:	0529f063          	bgeu	s3,s2,80004190 <_ZN5Riscv10initSystemEv+0x264>
        setVirtualAddr(i, 0x1,0x17);
    80004154:	01700613          	li	a2,23
    80004158:	00100593          	li	a1,1
    8000415c:	00098513          	mv	a0,s3
    80004160:	00000097          	auipc	ra,0x0
    80004164:	c68080e7          	jalr	-920(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    for(uint64 i=(uint64)&kernelDataStart;i<(uint64)HEAP_START_ADDR;i+=4096) {
    80004168:	000017b7          	lui	a5,0x1
    8000416c:	00f989b3          	add	s3,s3,a5
    80004170:	fd5ff06f          	j	80004144 <_ZN5Riscv10initSystemEv+0x218>
        setVirtualAddr(i, 0x1,0x7);
    80004174:	00700613          	li	a2,7
    80004178:	00100593          	li	a1,1
    8000417c:	00090513          	mv	a0,s2
    80004180:	00000097          	auipc	ra,0x0
    80004184:	c48080e7          	jalr	-952(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    for(uint64 i=(uint64)HEAP_START_ADDR;i<(uint64)newStartAddr;i+=4096) {
    80004188:	000017b7          	lui	a5,0x1
    8000418c:	00f90933          	add	s2,s2,a5
    80004190:	fe9962e3          	bltu	s2,s1,80004174 <_ZN5Riscv10initSystemEv+0x248>
    for(uint64 i = (uint64)newStartAddr;i<=(uint64)HEAP_END_ADDR;i+=4096){
    80004194:	00004797          	auipc	a5,0x4
    80004198:	7cc7b783          	ld	a5,1996(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0xa0>
    8000419c:	0007b783          	ld	a5,0(a5)
    800041a0:	0297e263          	bltu	a5,s1,800041c4 <_ZN5Riscv10initSystemEv+0x298>
        setVirtualAddr(i, 0x1,0x17);
    800041a4:	01700613          	li	a2,23
    800041a8:	00100593          	li	a1,1
    800041ac:	00048513          	mv	a0,s1
    800041b0:	00000097          	auipc	ra,0x0
    800041b4:	c18080e7          	jalr	-1000(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    for(uint64 i = (uint64)newStartAddr;i<=(uint64)HEAP_END_ADDR;i+=4096){
    800041b8:	000017b7          	lui	a5,0x1
    800041bc:	00f484b3          	add	s1,s1,a5
    800041c0:	fd5ff06f          	j	80004194 <_ZN5Riscv10initSystemEv+0x268>
    setVirtualAddr((size_t)CONSOLE_RX_DATA,0x1,0xf);
    800041c4:	00f00613          	li	a2,15
    800041c8:	00100593          	li	a1,1
    800041cc:	00004797          	auipc	a5,0x4
    800041d0:	6fc7b783          	ld	a5,1788(a5) # 800088c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800041d4:	0007b503          	ld	a0,0(a5)
    800041d8:	00000097          	auipc	ra,0x0
    800041dc:	bf0080e7          	jalr	-1040(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_TX_DATA,0x1,0xf);
    800041e0:	00f00613          	li	a2,15
    800041e4:	00100593          	li	a1,1
    800041e8:	00004797          	auipc	a5,0x4
    800041ec:	7207b783          	ld	a5,1824(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x48>
    800041f0:	0007b503          	ld	a0,0(a5)
    800041f4:	00000097          	auipc	ra,0x0
    800041f8:	bd4080e7          	jalr	-1068(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_STATUS,0x1,0xf);
    800041fc:	00f00613          	li	a2,15
    80004200:	00100593          	li	a1,1
    80004204:	00004797          	auipc	a5,0x4
    80004208:	6cc7b783          	ld	a5,1740(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000420c:	0007b503          	ld	a0,0(a5)
    80004210:	00000097          	auipc	ra,0x0
    80004214:	bb8080e7          	jalr	-1096(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr(0xc201004,0x1,0xf);
    80004218:	00f00613          	li	a2,15
    8000421c:	00100593          	li	a1,1
    80004220:	0c201537          	lui	a0,0xc201
    80004224:	00450513          	addi	a0,a0,4 # c201004 <_entry-0x73dfeffc>
    80004228:	00000097          	auipc	ra,0x0
    8000422c:	ba0080e7          	jalr	-1120(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004230:	000407b7          	lui	a5,0x40
    80004234:	1007a073          	csrs	sstatus,a5
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT >> 12);
    80004238:	0000d797          	auipc	a5,0xd
    8000423c:	8207b783          	ld	a5,-2016(a5) # 80010a58 <_ZN5Riscv7mainPMTE>
    80004240:	00c7d793          	srli	a5,a5,0xc
    80004244:	fff00713          	li	a4,-1
    80004248:	03f71713          	slli	a4,a4,0x3f
    8000424c:	00e7e7b3          	or	a5,a5,a4
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
    80004250:	18079073          	csrw	satp,a5
}
    80004254:	03813083          	ld	ra,56(sp)
    80004258:	03013403          	ld	s0,48(sp)
    8000425c:	02813483          	ld	s1,40(sp)
    80004260:	02013903          	ld	s2,32(sp)
    80004264:	01813983          	ld	s3,24(sp)
    80004268:	01013a03          	ld	s4,16(sp)
    8000426c:	00813a83          	ld	s5,8(sp)
    80004270:	00013b03          	ld	s6,0(sp)
    80004274:	04010113          	addi	sp,sp,64
    80004278:	00008067          	ret

000000008000427c <_ZN5Riscv14addVirtualAddrEm>:

void Riscv::addVirtualAddr(size_t addr)
{
    8000427c:	ff010113          	addi	sp,sp,-16
    80004280:	00113423          	sd	ra,8(sp)
    80004284:	00813023          	sd	s0,0(sp)
    80004288:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    8000428c:	00f00613          	li	a2,15
    80004290:	00100593          	li	a1,1
    80004294:	00000097          	auipc	ra,0x0
    80004298:	b34080e7          	jalr	-1228(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
}
    8000429c:	00813083          	ld	ra,8(sp)
    800042a0:	00013403          	ld	s0,0(sp)
    800042a4:	01010113          	addi	sp,sp,16
    800042a8:	00008067          	ret

00000000800042ac <_ZN5Riscv19addVirtualAddrInstrEm>:

void Riscv::addVirtualAddrInstr(size_t addr)
{
    800042ac:	ff010113          	addi	sp,sp,-16
    800042b0:	00113423          	sd	ra,8(sp)
    800042b4:	00813023          	sd	s0,0(sp)
    800042b8:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    800042bc:	00f00613          	li	a2,15
    800042c0:	00100593          	li	a1,1
    800042c4:	00000097          	auipc	ra,0x0
    800042c8:	b04080e7          	jalr	-1276(ra) # 80003dc8 <_ZN5Riscv14setVirtualAddrEmmm>
}
    800042cc:	00813083          	ld	ra,8(sp)
    800042d0:	00013403          	ld	s0,0(sp)
    800042d4:	01010113          	addi	sp,sp,16
    800042d8:	00008067          	ret

00000000800042dc <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    800042dc:	0000c797          	auipc	a5,0xc
    800042e0:	79c7c783          	lbu	a5,1948(a5) # 80010a78 <_ZN5Riscv16kernelMainCalledE>
    800042e4:	00078463          	beqz	a5,800042ec <_ZN5Riscv10kernelMainEv+0x10>
    800042e8:	00008067          	ret
{
    800042ec:	ff010113          	addi	sp,sp,-16
    800042f0:	00113423          	sd	ra,8(sp)
    800042f4:	00813023          	sd	s0,0(sp)
    800042f8:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    800042fc:	00100793          	li	a5,1
    80004300:	0000c717          	auipc	a4,0xc
    80004304:	76f70c23          	sb	a5,1912(a4) # 80010a78 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80004308:	00000097          	auipc	ra,0x0
    8000430c:	c24080e7          	jalr	-988(ra) # 80003f2c <_ZN5Riscv10initSystemEv>

    testOS2();
    80004310:	00001097          	auipc	ra,0x1
    80004314:	ce0080e7          	jalr	-800(ra) # 80004ff0 <_Z7testOS2v>
    //while(!PCB::userPCB->isFinished())
    //{
    //    thread_dispatch_kernel();
    //}

    endSystem();
    80004318:	00000097          	auipc	ra,0x0
    8000431c:	9c4080e7          	jalr	-1596(ra) # 80003cdc <_ZN5Riscv9endSystemEv>
}
    80004320:	00813083          	ld	ra,8(sp)
    80004324:	00013403          	ld	s0,0(sp)
    80004328:	01010113          	addi	sp,sp,16
    8000432c:	00008067          	ret

0000000080004330 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004330:	ff010113          	addi	sp,sp,-16
    80004334:	00813423          	sd	s0,8(sp)
    80004338:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    8000433c:	00200793          	li	a5,2
    80004340:	1047b073          	csrc	sie,a5
}
    80004344:	00813403          	ld	s0,8(sp)
    80004348:	01010113          	addi	sp,sp,16
    8000434c:	00008067          	ret

0000000080004350 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004350:	ff010113          	addi	sp,sp,-16
    80004354:	00813423          	sd	s0,8(sp)
    80004358:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    8000435c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004360:	00004717          	auipc	a4,0x4
    80004364:	5f873703          	ld	a4,1528(a4) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004368:	00073703          	ld	a4,0(a4)
    8000436c:	01073703          	ld	a4,16(a4)
    80004370:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004374:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004378:	00078593          	mv	a1,a5
}
    8000437c:	00813403          	ld	s0,8(sp)
    80004380:	01010113          	addi	sp,sp,16
    80004384:	00008067          	ret

0000000080004388 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004388:	ff010113          	addi	sp,sp,-16
    8000438c:	00813423          	sd	s0,8(sp)
    80004390:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004394:	00004797          	auipc	a5,0x4
    80004398:	5c47b783          	ld	a5,1476(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x98>
    8000439c:	0007b783          	ld	a5,0(a5)
    800043a0:	0007c783          	lbu	a5,0(a5)
    800043a4:	00078c63          	beqz	a5,800043bc <_ZN5Riscv14changePrivModeEv+0x34>
    800043a8:	10000793          	li	a5,256
    800043ac:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800043b0:	00813403          	ld	s0,8(sp)
    800043b4:	01010113          	addi	sp,sp,16
    800043b8:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800043bc:	10000793          	li	a5,256
    800043c0:	1007b073          	csrc	sstatus,a5
    800043c4:	fedff06f          	j	800043b0 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800043c8 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800043c8:	f9010113          	addi	sp,sp,-112
    800043cc:	06113423          	sd	ra,104(sp)
    800043d0:	06813023          	sd	s0,96(sp)
    800043d4:	04913c23          	sd	s1,88(sp)
    800043d8:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800043dc:	00070713          	mv	a4,a4
    800043e0:	00004797          	auipc	a5,0x4
    800043e4:	5987b783          	ld	a5,1432(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0xb8>
    800043e8:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800043ec:	00004797          	auipc	a5,0x4
    800043f0:	56c7b783          	ld	a5,1388(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x98>
    800043f4:	0007b783          	ld	a5,0(a5)
    800043f8:	14002773          	csrr	a4,sscratch
    800043fc:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004400:	142027f3          	csrr	a5,scause
    80004404:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004408:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    8000440c:	00f00713          	li	a4,15
    80004410:	02f76863          	bltu	a4,a5,80004440 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    80004414:	00200713          	li	a4,2
    80004418:	10e7e863          	bltu	a5,a4,80004528 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    8000441c:	00f00713          	li	a4,15
    80004420:	10f76463          	bltu	a4,a5,80004528 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    80004424:	00279793          	slli	a5,a5,0x2
    80004428:	00004717          	auipc	a4,0x4
    8000442c:	f9c70713          	addi	a4,a4,-100 # 800083c4 <CONSOLE_STATUS+0x3b4>
    80004430:	00e787b3          	add	a5,a5,a4
    80004434:	0007a783          	lw	a5,0(a5)
    80004438:	00e787b3          	add	a5,a5,a4
    8000443c:	00078067          	jr	a5
    80004440:	fff00713          	li	a4,-1
    80004444:	03f71713          	slli	a4,a4,0x3f
    80004448:	00170713          	addi	a4,a4,1
    8000444c:	04e78a63          	beq	a5,a4,800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    80004450:	fff00713          	li	a4,-1
    80004454:	03f71713          	slli	a4,a4,0x3f
    80004458:	00970713          	addi	a4,a4,9
    8000445c:	0ce79663          	bne	a5,a4,80004528 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            KConsole::getCharactersFromConsole();
    80004460:	fffff097          	auipc	ra,0xfffff
    80004464:	c8c080e7          	jalr	-884(ra) # 800030ec <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004468:	00002097          	auipc	ra,0x2
    8000446c:	89c080e7          	jalr	-1892(ra) # 80005d04 <plic_claim>
    80004470:	00002097          	auipc	ra,0x2
    80004474:	8cc080e7          	jalr	-1844(ra) # 80005d3c <plic_complete>
            break;
    80004478:	0b00006f          	j	80004528 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
    8000447c:	14302573          	csrr	a0,stval
            addVirtualAddr(addrPF);
    80004480:	00000097          	auipc	ra,0x0
    80004484:	dfc080e7          	jalr	-516(ra) # 8000427c <_ZN5Riscv14addVirtualAddrEm>
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
    80004488:	14302573          	csrr	a0,stval
            addVirtualAddr(addrPF);
    8000448c:	00000097          	auipc	ra,0x0
    80004490:	df0080e7          	jalr	-528(ra) # 8000427c <_ZN5Riscv14addVirtualAddrEm>
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
    80004494:	14302573          	csrr	a0,stval
            addVirtualAddrInstr(addrPF);
    80004498:	00000097          	auipc	ra,0x0
    8000449c:	e14080e7          	jalr	-492(ra) # 800042ac <_ZN5Riscv19addVirtualAddrInstrEm>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800044a0:	141027f3          	csrr	a5,sepc
    800044a4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800044a8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800044ac:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800044b0:	100027f3          	csrr	a5,sstatus
    800044b4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800044b8:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800044bc:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800044c0:	00200793          	li	a5,2
    800044c4:	1447b073          	csrc	sip,a5
            totalTime++;
    800044c8:	0000c717          	auipc	a4,0xc
    800044cc:	58870713          	addi	a4,a4,1416 # 80010a50 <_ZN5Riscv12finishSystemE>
    800044d0:	03073783          	ld	a5,48(a4)
    800044d4:	00178793          	addi	a5,a5,1
    800044d8:	02f73823          	sd	a5,48(a4)
            PCB::timeSliceCounter++;
    800044dc:	00004497          	auipc	s1,0x4
    800044e0:	4344b483          	ld	s1,1076(s1) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x50>
    800044e4:	0004b783          	ld	a5,0(s1)
    800044e8:	00178793          	addi	a5,a5,1
    800044ec:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800044f0:	fffff097          	auipc	ra,0xfffff
    800044f4:	138080e7          	jalr	312(ra) # 80003628 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800044f8:	00004797          	auipc	a5,0x4
    800044fc:	4607b783          	ld	a5,1120(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004500:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004504:	0187b783          	ld	a5,24(a5)
    80004508:	0004b703          	ld	a4,0(s1)
    8000450c:	02f77863          	bgeu	a4,a5,8000453c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            Riscv::w_sstatus(sstatus);
    80004510:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004514:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004518:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000451c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004520:	00000097          	auipc	ra,0x0
    80004524:	e68080e7          	jalr	-408(ra) # 80004388 <_ZN5Riscv14changePrivModeEv>
}
    80004528:	06813083          	ld	ra,104(sp)
    8000452c:	06013403          	ld	s0,96(sp)
    80004530:	05813483          	ld	s1,88(sp)
    80004534:	07010113          	addi	sp,sp,112
    80004538:	00008067          	ret
                PCB::timeSliceCounter = 0;
    8000453c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004540:	ffffe097          	auipc	ra,0xffffe
    80004544:	f4c080e7          	jalr	-180(ra) # 8000248c <_ZN3PCB8dispatchEv>
    80004548:	fc9ff06f          	j	80004510 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    8000454c:	ffffe097          	auipc	ra,0xffffe
    80004550:	140080e7          	jalr	320(ra) # 8000268c <_ZN3PCB17threadExitHandlerEv>
            break;
    80004554:	fd5ff06f          	j	80004528 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004558:	ffffe097          	auipc	ra,0xffffe
    8000455c:	134080e7          	jalr	308(ra) # 8000268c <_ZN3PCB17threadExitHandlerEv>
            break;
    80004560:	fc9ff06f          	j	80004528 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004564:	ffffe097          	auipc	ra,0xffffe
    80004568:	128080e7          	jalr	296(ra) # 8000268c <_ZN3PCB17threadExitHandlerEv>
            break;
    8000456c:	fbdff06f          	j	80004528 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004570:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004574:	14102773          	csrr	a4,sepc
    80004578:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    8000457c:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004580:	00470713          	addi	a4,a4,4
    80004584:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004588:	10002773          	csrr	a4,sstatus
    8000458c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004590:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004594:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004598:	04300713          	li	a4,67
    8000459c:	02f76463          	bltu	a4,a5,800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    800045a0:	00279793          	slli	a5,a5,0x2
    800045a4:	00004717          	auipc	a4,0x4
    800045a8:	e6070713          	addi	a4,a4,-416 # 80008404 <CONSOLE_STATUS+0x3f4>
    800045ac:	00e787b3          	add	a5,a5,a4
    800045b0:	0007a783          	lw	a5,0(a5)
    800045b4:	00e787b3          	add	a5,a5,a4
    800045b8:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    800045bc:	00000097          	auipc	ra,0x0
    800045c0:	4f0080e7          	jalr	1264(ra) # 80004aac <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800045c4:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800045c8:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800045cc:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800045d0:	14179073          	csrw	sepc,a5
            changePrivMode();
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	db4080e7          	jalr	-588(ra) # 80004388 <_ZN5Riscv14changePrivModeEv>
}
    800045dc:	f4dff06f          	j	80004528 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                    MemoryAllocator::memFreeHandler();
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	53c080e7          	jalr	1340(ra) # 80004b1c <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800045e8:	fddff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    800045ec:	ffffe097          	auipc	ra,0xffffe
    800045f0:	268080e7          	jalr	616(ra) # 80002854 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    800045f4:	fd1ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	174080e7          	jalr	372(ra) # 8000276c <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004600:	fc5ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    80004604:	ffffe097          	auipc	ra,0xffffe
    80004608:	20c080e7          	jalr	524(ra) # 80002810 <_ZN3PCB18threadStartHandlerEv>
                    break;
    8000460c:	fb9ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    80004610:	ffffe097          	auipc	ra,0xffffe
    80004614:	0c8080e7          	jalr	200(ra) # 800026d8 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004618:	fadff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    8000461c:	ffffe097          	auipc	ra,0xffffe
    80004620:	070080e7          	jalr	112(ra) # 8000268c <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004624:	fa1ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    80004628:	ffffe097          	auipc	ra,0xffffe
    8000462c:	0e0080e7          	jalr	224(ra) # 80002708 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004630:	f95ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                     PCB::threadDelPCBHandler();
    80004634:	ffffe097          	auipc	ra,0xffffe
    80004638:	2b8080e7          	jalr	696(ra) # 800028ec <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    8000463c:	f89ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    80004640:	00001097          	auipc	ra,0x1
    80004644:	cc4080e7          	jalr	-828(ra) # 80005304 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004648:	f7dff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	d6c080e7          	jalr	-660(ra) # 800053b8 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004654:	f71ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    80004658:	00001097          	auipc	ra,0x1
    8000465c:	db4080e7          	jalr	-588(ra) # 8000540c <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004660:	f65ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    80004664:	00001097          	auipc	ra,0x1
    80004668:	dec080e7          	jalr	-532(ra) # 80005450 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    8000466c:	f59ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    80004670:	fffff097          	auipc	ra,0xfffff
    80004674:	c80080e7          	jalr	-896(ra) # 800032f0 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004678:	f4dff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    8000467c:	fffff097          	auipc	ra,0xfffff
    80004680:	c44080e7          	jalr	-956(ra) # 800032c0 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004684:	f41ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getCharHandler();
    80004688:	fffff097          	auipc	ra,0xfffff
    8000468c:	dc4080e7          	jalr	-572(ra) # 8000344c <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004690:	f35ff06f          	j	800045c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

0000000080004694 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004694:	ff010113          	addi	sp,sp,-16
    80004698:	00813423          	sd	s0,8(sp)
    8000469c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800046a0:	0000c717          	auipc	a4,0xc
    800046a4:	3e872703          	lw	a4,1000(a4) # 80010a88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800046a8:	00100793          	li	a5,1
    800046ac:	02f70c63          	beq	a4,a5,800046e4 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    800046b0:	0000c797          	auipc	a5,0xc
    800046b4:	3d878793          	addi	a5,a5,984 # 80010a88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800046b8:	00100713          	li	a4,1
    800046bc:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800046c0:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    800046c4:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    800046c8:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    800046cc:	00004797          	auipc	a5,0x4
    800046d0:	2947b783          	ld	a5,660(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800046d4:	0007b783          	ld	a5,0(a5)
    800046d8:	40a787b3          	sub	a5,a5,a0
    800046dc:	ff178793          	addi	a5,a5,-15
    800046e0:	00f53023          	sd	a5,0(a0)
}
    800046e4:	00813403          	ld	s0,8(sp)
    800046e8:	01010113          	addi	sp,sp,16
    800046ec:	00008067          	ret

00000000800046f0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    800046f0:	ff010113          	addi	sp,sp,-16
    800046f4:	00813423          	sd	s0,8(sp)
    800046f8:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800046fc:	0000c797          	auipc	a5,0xc
    80004700:	38c7a783          	lw	a5,908(a5) # 80010a88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004704:	02078a63          	beqz	a5,80004738 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004708:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    8000470c:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    80004710:	0000c797          	auipc	a5,0xc
    80004714:	3807b783          	ld	a5,896(a5) # 80010a90 <_ZN15MemoryAllocator13headAllocatedE>
    80004718:	02078663          	beqz	a5,80004744 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    8000471c:	00004717          	auipc	a4,0x4
    80004720:	24473703          	ld	a4,580(a4) # 80008960 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004724:	00073703          	ld	a4,0(a4)
    80004728:	02c76463          	bltu	a4,a2,80004750 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    8000472c:	00863783          	ld	a5,8(a2)
    80004730:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    80004734:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004738:	00813403          	ld	s0,8(sp)
    8000473c:	01010113          	addi	sp,sp,16
    80004740:	00008067          	ret
        headAllocated = newAllocated;
    80004744:	0000c797          	auipc	a5,0xc
    80004748:	34a7b623          	sd	a0,844(a5) # 80010a90 <_ZN15MemoryAllocator13headAllocatedE>
    8000474c:	fedff06f          	j	80004738 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004750:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004754:	0000c797          	auipc	a5,0xc
    80004758:	32a7be23          	sd	a0,828(a5) # 80010a90 <_ZN15MemoryAllocator13headAllocatedE>
    8000475c:	fddff06f          	j	80004738 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004760 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004760:	ff010113          	addi	sp,sp,-16
    80004764:	00813423          	sd	s0,8(sp)
    80004768:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    8000476c:	0000c797          	auipc	a5,0xc
    80004770:	31c7a783          	lw	a5,796(a5) # 80010a88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004774:	02078c63          	beqz	a5,800047ac <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004778:	0000c797          	auipc	a5,0xc
    8000477c:	3187b783          	ld	a5,792(a5) # 80010a90 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004780:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004784:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004788:	00000713          	li	a4,0
    while(curr != 0)
    8000478c:	00078c63          	beqz	a5,800047a4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004790:	00f56863          	bltu	a0,a5,800047a0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004794:	00078713          	mv	a4,a5
        curr = curr->next;
    80004798:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000479c:	ff1ff06f          	j	8000478c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    800047a0:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    800047a4:	00070a63          	beqz	a4,800047b8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800047a8:	00a73423          	sd	a0,8(a4)
}
    800047ac:	00813403          	ld	s0,8(sp)
    800047b0:	01010113          	addi	sp,sp,16
    800047b4:	00008067          	ret
        headAllocated = newAllocated;
    800047b8:	0000c797          	auipc	a5,0xc
    800047bc:	2ca7bc23          	sd	a0,728(a5) # 80010a90 <_ZN15MemoryAllocator13headAllocatedE>
    800047c0:	fedff06f          	j	800047ac <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

00000000800047c4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    800047c4:	0000c797          	auipc	a5,0xc
    800047c8:	2c47a783          	lw	a5,708(a5) # 80010a88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800047cc:	0e078e63          	beqz	a5,800048c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    800047d0:	fe010113          	addi	sp,sp,-32
    800047d4:	00113c23          	sd	ra,24(sp)
    800047d8:	00813823          	sd	s0,16(sp)
    800047dc:	00913423          	sd	s1,8(sp)
    800047e0:	02010413          	addi	s0,sp,32
    800047e4:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800047e8:	0000c497          	auipc	s1,0xc
    800047ec:	2b04b483          	ld	s1,688(s1) # 80010a98 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800047f0:	00000713          	li	a4,0
    while(curr != 0)
    800047f4:	0a048e63          	beqz	s1,800048b0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    800047f8:	0004b783          	ld	a5,0(s1)
    800047fc:	00b7f863          	bgeu	a5,a1,8000480c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004800:	00048713          	mv	a4,s1
        curr = curr->next;
    80004804:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004808:	fedff06f          	j	800047f4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    8000480c:	01058693          	addi	a3,a1,16
    80004810:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004814:	01078613          	addi	a2,a5,16
    80004818:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    8000481c:	00004517          	auipc	a0,0x4
    80004820:	14453503          	ld	a0,324(a0) # 80008960 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004824:	00053503          	ld	a0,0(a0)
    80004828:	06d56063          	bltu	a0,a3,80004888 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    8000482c:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004830:	01000813          	li	a6,16
    80004834:	02a87663          	bgeu	a6,a0,80004860 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004838:	0084b783          	ld	a5,8(s1)
    8000483c:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004840:	ff050513          	addi	a0,a0,-16
    80004844:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004848:	00070663          	beqz	a4,80004854 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    8000484c:	00d73423          	sd	a3,8(a4)
    80004850:	0400006f          	j	80004890 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004854:	0000c797          	auipc	a5,0xc
    80004858:	24d7b223          	sd	a3,580(a5) # 80010a98 <_ZN15MemoryAllocator8headFreeE>
    8000485c:	0340006f          	j	80004890 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004860:	00070a63          	beqz	a4,80004874 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004864:	0084b683          	ld	a3,8(s1)
    80004868:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    8000486c:	00078593          	mv	a1,a5
    80004870:	0200006f          	j	80004890 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004874:	0084b703          	ld	a4,8(s1)
    80004878:	0000c697          	auipc	a3,0xc
    8000487c:	22e6b023          	sd	a4,544(a3) # 80010a98 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004880:	00078593          	mv	a1,a5
    80004884:	00c0006f          	j	80004890 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004888:	00070e63          	beqz	a4,800048a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    8000488c:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004890:	00048513          	mv	a0,s1
    80004894:	00000097          	auipc	ra,0x0
    80004898:	e5c080e7          	jalr	-420(ra) # 800046f0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000489c:	01048513          	addi	a0,s1,16
            break;
    800048a0:	0140006f          	j	800048b4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    800048a4:	0000c797          	auipc	a5,0xc
    800048a8:	1e07ba23          	sd	zero,500(a5) # 80010a98 <_ZN15MemoryAllocator8headFreeE>
    800048ac:	fe5ff06f          	j	80004890 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    800048b0:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800048b4:	01813083          	ld	ra,24(sp)
    800048b8:	01013403          	ld	s0,16(sp)
    800048bc:	00813483          	ld	s1,8(sp)
    800048c0:	02010113          	addi	sp,sp,32
    800048c4:	00008067          	ret
        return nullptr;
    800048c8:	00000513          	li	a0,0
}
    800048cc:	00008067          	ret

00000000800048d0 <_ZN15MemoryAllocator9mem_allocEm>:
{
    800048d0:	ff010113          	addi	sp,sp,-16
    800048d4:	00113423          	sd	ra,8(sp)
    800048d8:	00813023          	sd	s0,0(sp)
    800048dc:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800048e0:	00000097          	auipc	ra,0x0
    800048e4:	ee4080e7          	jalr	-284(ra) # 800047c4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800048e8:	00813083          	ld	ra,8(sp)
    800048ec:	00013403          	ld	s0,0(sp)
    800048f0:	01010113          	addi	sp,sp,16
    800048f4:	00008067          	ret

00000000800048f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800048f8:	ff010113          	addi	sp,sp,-16
    800048fc:	00813423          	sd	s0,8(sp)
    80004900:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004904:	0000c797          	auipc	a5,0xc
    80004908:	1847a783          	lw	a5,388(a5) # 80010a88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000490c:	06078263          	beqz	a5,80004970 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004910:	0000c797          	auipc	a5,0xc
    80004914:	1887b783          	ld	a5,392(a5) # 80010a98 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004918:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    8000491c:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004920:	00000713          	li	a4,0
    while(curr != 0)
    80004924:	00078c63          	beqz	a5,8000493c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004928:	00f56863          	bltu	a0,a5,80004938 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    8000492c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004930:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004934:	ff1ff06f          	j	80004924 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004938:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    8000493c:	04070063          	beqz	a4,8000497c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004940:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004944:	00853783          	ld	a5,8(a0)
    80004948:	00078a63          	beqz	a5,8000495c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    8000494c:	00053603          	ld	a2,0(a0)
    80004950:	01060693          	addi	a3,a2,16
    80004954:	00d506b3          	add	a3,a0,a3
    80004958:	02d78863          	beq	a5,a3,80004988 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    8000495c:	00070a63          	beqz	a4,80004970 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004960:	00073683          	ld	a3,0(a4)
    80004964:	01068793          	addi	a5,a3,16
    80004968:	00f707b3          	add	a5,a4,a5
    8000496c:	02a78c63          	beq	a5,a0,800049a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004970:	00813403          	ld	s0,8(sp)
    80004974:	01010113          	addi	sp,sp,16
    80004978:	00008067          	ret
        headFree = newSegment;
    8000497c:	0000c797          	auipc	a5,0xc
    80004980:	10a7be23          	sd	a0,284(a5) # 80010a98 <_ZN15MemoryAllocator8headFreeE>
    80004984:	fc1ff06f          	j	80004944 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004988:	0007b683          	ld	a3,0(a5)
    8000498c:	00d60633          	add	a2,a2,a3
    80004990:	01060613          	addi	a2,a2,16
    80004994:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004998:	0087b783          	ld	a5,8(a5)
    8000499c:	00f53423          	sd	a5,8(a0)
    800049a0:	fbdff06f          	j	8000495c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800049a4:	00053783          	ld	a5,0(a0)
    800049a8:	00f686b3          	add	a3,a3,a5
    800049ac:	01068693          	addi	a3,a3,16
    800049b0:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    800049b4:	00853783          	ld	a5,8(a0)
    800049b8:	00f73423          	sd	a5,8(a4)
    800049bc:	fb5ff06f          	j	80004970 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

00000000800049c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    800049c0:	0000c797          	auipc	a5,0xc
    800049c4:	0c87a783          	lw	a5,200(a5) # 80010a88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800049c8:	08078263          	beqz	a5,80004a4c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    800049cc:	fe010113          	addi	sp,sp,-32
    800049d0:	00113c23          	sd	ra,24(sp)
    800049d4:	00813823          	sd	s0,16(sp)
    800049d8:	00913423          	sd	s1,8(sp)
    800049dc:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800049e0:	0000c497          	auipc	s1,0xc
    800049e4:	0b04b483          	ld	s1,176(s1) # 80010a90 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800049e8:	00000713          	li	a4,0
    while(curr != 0)
    800049ec:	02048a63          	beqz	s1,80004a20 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800049f0:	01048793          	addi	a5,s1,16
    800049f4:	00a78863          	beq	a5,a0,80004a04 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800049f8:	00048713          	mv	a4,s1
        curr = curr->next;
    800049fc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004a00:	fedff06f          	j	800049ec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004a04:	02070c63          	beqz	a4,80004a3c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004a08:	0084b783          	ld	a5,8(s1)
    80004a0c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004a10:	0004b583          	ld	a1,0(s1)
    80004a14:	00048513          	mv	a0,s1
    80004a18:	00000097          	auipc	ra,0x0
    80004a1c:	ee0080e7          	jalr	-288(ra) # 800048f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004a20:	02048a63          	beqz	s1,80004a54 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004a24:	00000513          	li	a0,0
    else
        return 1;
}
    80004a28:	01813083          	ld	ra,24(sp)
    80004a2c:	01013403          	ld	s0,16(sp)
    80004a30:	00813483          	ld	s1,8(sp)
    80004a34:	02010113          	addi	sp,sp,32
    80004a38:	00008067          	ret
                headAllocated = curr->next;
    80004a3c:	0084b783          	ld	a5,8(s1)
    80004a40:	0000c717          	auipc	a4,0xc
    80004a44:	04f73823          	sd	a5,80(a4) # 80010a90 <_ZN15MemoryAllocator13headAllocatedE>
    80004a48:	fc9ff06f          	j	80004a10 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004a4c:	00100513          	li	a0,1
}
    80004a50:	00008067          	ret
        return 1;
    80004a54:	00100513          	li	a0,1
    80004a58:	fd1ff06f          	j	80004a28 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004a5c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004a5c:	ff010113          	addi	sp,sp,-16
    80004a60:	00113423          	sd	ra,8(sp)
    80004a64:	00813023          	sd	s0,0(sp)
    80004a68:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004a6c:	00000097          	auipc	ra,0x0
    80004a70:	f54080e7          	jalr	-172(ra) # 800049c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004a74:	00813083          	ld	ra,8(sp)
    80004a78:	00013403          	ld	s0,0(sp)
    80004a7c:	01010113          	addi	sp,sp,16
    80004a80:	00008067          	ret

0000000080004a84 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004a84:	ff010113          	addi	sp,sp,-16
    80004a88:	00113423          	sd	ra,8(sp)
    80004a8c:	00813023          	sd	s0,0(sp)
    80004a90:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004a94:	00000097          	auipc	ra,0x0
    80004a98:	e3c080e7          	jalr	-452(ra) # 800048d0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004a9c:	00813083          	ld	ra,8(sp)
    80004aa0:	00013403          	ld	s0,0(sp)
    80004aa4:	01010113          	addi	sp,sp,16
    80004aa8:	00008067          	ret

0000000080004aac <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004aac:	ff010113          	addi	sp,sp,-16
    80004ab0:	00113423          	sd	ra,8(sp)
    80004ab4:	00813023          	sd	s0,0(sp)
    80004ab8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004abc:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004ac0:	00651513          	slli	a0,a0,0x6
    80004ac4:	00000097          	auipc	ra,0x0
    80004ac8:	fc0080e7          	jalr	-64(ra) # 80004a84 <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    80004acc:	02050063          	beqz	a0,80004aec <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004ad0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004ad4:	00000097          	auipc	ra,0x0
    80004ad8:	87c080e7          	jalr	-1924(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004adc:	00813083          	ld	ra,8(sp)
    80004ae0:	00013403          	ld	s0,0(sp)
    80004ae4:	01010113          	addi	sp,sp,16
    80004ae8:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004aec:	00000513          	li	a0,0
    80004af0:	fe5ff06f          	j	80004ad4 <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

0000000080004af4 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004af4:	ff010113          	addi	sp,sp,-16
    80004af8:	00113423          	sd	ra,8(sp)
    80004afc:	00813023          	sd	s0,0(sp)
    80004b00:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004b04:	00000097          	auipc	ra,0x0
    80004b08:	f58080e7          	jalr	-168(ra) # 80004a5c <_ZN15MemoryAllocator8mem_freeEPv>
    80004b0c:	00813083          	ld	ra,8(sp)
    80004b10:	00013403          	ld	s0,0(sp)
    80004b14:	01010113          	addi	sp,sp,16
    80004b18:	00008067          	ret

0000000080004b1c <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004b1c:	ff010113          	addi	sp,sp,-16
    80004b20:	00113423          	sd	ra,8(sp)
    80004b24:	00813023          	sd	s0,0(sp)
    80004b28:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004b2c:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004b30:	00000097          	auipc	ra,0x0
    80004b34:	fc4080e7          	jalr	-60(ra) # 80004af4 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004b38:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004b3c:	00000097          	auipc	ra,0x0
    80004b40:	814080e7          	jalr	-2028(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004b44:	00813083          	ld	ra,8(sp)
    80004b48:	00013403          	ld	s0,0(sp)
    80004b4c:	01010113          	addi	sp,sp,16
    80004b50:	00008067          	ret

0000000080004b54 <_Z12slabInitTestv>:
#include "../../h/slabTests.hpp"
#include "../../h/KConsole.hpp"

void slabInitTest()
{
    80004b54:	ff010113          	addi	sp,sp,-16
    80004b58:	00113423          	sd	ra,8(sp)
    80004b5c:	00813023          	sd	s0,0(sp)
    80004b60:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004b64:	00f00593          	li	a1,15
    80004b68:	00004797          	auipc	a5,0x4
    80004b6c:	d707b783          	ld	a5,-656(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004b70:	0007b503          	ld	a0,0(a5)
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	060080e7          	jalr	96(ra) # 80001bd4 <_Z9kmem_initPvi>
}
    80004b7c:	00813083          	ld	ra,8(sp)
    80004b80:	00013403          	ld	s0,0(sp)
    80004b84:	01010113          	addi	sp,sp,16
    80004b88:	00008067          	ret

0000000080004b8c <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004b8c:	fe010113          	addi	sp,sp,-32
    80004b90:	00113c23          	sd	ra,24(sp)
    80004b94:	00813823          	sd	s0,16(sp)
    80004b98:	00913423          	sd	s1,8(sp)
    80004b9c:	01213023          	sd	s2,0(sp)
    80004ba0:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004ba4:	00f00593          	li	a1,15
    80004ba8:	00004797          	auipc	a5,0x4
    80004bac:	d307b783          	ld	a5,-720(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004bb0:	0007b503          	ld	a0,0(a5)
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	020080e7          	jalr	32(ra) # 80001bd4 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004bbc:	00000693          	li	a3,0
    80004bc0:	00000613          	li	a2,0
    80004bc4:	00a00593          	li	a1,10
    80004bc8:	00004517          	auipc	a0,0x4
    80004bcc:	95050513          	addi	a0,a0,-1712 # 80008518 <CONSOLE_STATUS+0x508>
    80004bd0:	ffffd097          	auipc	ra,0xffffd
    80004bd4:	174080e7          	jalr	372(ra) # 80001d44 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004bd8:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004bdc:	00000693          	li	a3,0
    80004be0:	00000613          	li	a2,0
    80004be4:	00a00593          	li	a1,10
    80004be8:	00004517          	auipc	a0,0x4
    80004bec:	94050513          	addi	a0,a0,-1728 # 80008528 <CONSOLE_STATUS+0x518>
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	154080e7          	jalr	340(ra) # 80001d44 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004bf8:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004bfc:	00000693          	li	a3,0
    80004c00:	00000613          	li	a2,0
    80004c04:	00a00593          	li	a1,10
    80004c08:	00004517          	auipc	a0,0x4
    80004c0c:	93050513          	addi	a0,a0,-1744 # 80008538 <CONSOLE_STATUS+0x528>
    80004c10:	ffffd097          	auipc	ra,0xffffd
    80004c14:	134080e7          	jalr	308(ra) # 80001d44 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004c18:	00048a63          	beqz	s1,80004c2c <_Z19slabCacheCreateTestv+0xa0>
    80004c1c:	00090863          	beqz	s2,80004c2c <_Z19slabCacheCreateTestv+0xa0>
    80004c20:	00050663          	beqz	a0,80004c2c <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004c24:	ffffd097          	auipc	ra,0xffffd
    80004c28:	370080e7          	jalr	880(ra) # 80001f94 <_Z22printSlabAllocatorInfov>
}
    80004c2c:	01813083          	ld	ra,24(sp)
    80004c30:	01013403          	ld	s0,16(sp)
    80004c34:	00813483          	ld	s1,8(sp)
    80004c38:	00013903          	ld	s2,0(sp)
    80004c3c:	02010113          	addi	sp,sp,32
    80004c40:	00008067          	ret

0000000080004c44 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004c44:	fe010113          	addi	sp,sp,-32
    80004c48:	00113c23          	sd	ra,24(sp)
    80004c4c:	00813823          	sd	s0,16(sp)
    80004c50:	00913423          	sd	s1,8(sp)
    80004c54:	01213023          	sd	s2,0(sp)
    80004c58:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004c5c:	00f00593          	li	a1,15
    80004c60:	00004797          	auipc	a5,0x4
    80004c64:	c787b783          	ld	a5,-904(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004c68:	0007b503          	ld	a0,0(a5)
    80004c6c:	ffffd097          	auipc	ra,0xffffd
    80004c70:	f68080e7          	jalr	-152(ra) # 80001bd4 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004c74:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004c78:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004c7c:	04400793          	li	a5,68
    80004c80:	0297c663          	blt	a5,s1,80004cac <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004c84:	00000693          	li	a3,0
    80004c88:	00000613          	li	a2,0
    80004c8c:	00a00593          	li	a1,10
    80004c90:	00004517          	auipc	a0,0x4
    80004c94:	88850513          	addi	a0,a0,-1912 # 80008518 <CONSOLE_STATUS+0x508>
    80004c98:	ffffd097          	auipc	ra,0xffffd
    80004c9c:	0ac080e7          	jalr	172(ra) # 80001d44 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004ca0:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004ca4:	0014849b          	addiw	s1,s1,1
    80004ca8:	fd5ff06f          	j	80004c7c <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004cac:	ffffd097          	auipc	ra,0xffffd
    80004cb0:	2e8080e7          	jalr	744(ra) # 80001f94 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004cb4:	00090513          	mv	a0,s2
    80004cb8:	ffffd097          	auipc	ra,0xffffd
    80004cbc:	564080e7          	jalr	1380(ra) # 8000221c <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004cc0:	ffffd097          	auipc	ra,0xffffd
    80004cc4:	2d4080e7          	jalr	724(ra) # 80001f94 <_Z22printSlabAllocatorInfov>
}
    80004cc8:	01813083          	ld	ra,24(sp)
    80004ccc:	01013403          	ld	s0,16(sp)
    80004cd0:	00813483          	ld	s1,8(sp)
    80004cd4:	00013903          	ld	s2,0(sp)
    80004cd8:	02010113          	addi	sp,sp,32
    80004cdc:	00008067          	ret

0000000080004ce0 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    80004ce0:	ff010113          	addi	sp,sp,-16
    80004ce4:	00813423          	sd	s0,8(sp)
    80004ce8:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    80004cec:	00000793          	li	a5,0
    80004cf0:	00b7da63          	bge	a5,a1,80004d04 <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    80004cf4:	00f50733          	add	a4,a0,a5
    80004cf8:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    80004cfc:	0017879b          	addiw	a5,a5,1
    80004d00:	ff1ff06f          	j	80004cf0 <_Z6memsetPKvii+0x10>
    }
}
    80004d04:	00813403          	ld	s0,8(sp)
    80004d08:	01010113          	addi	sp,sp,16
    80004d0c:	00008067          	ret

0000000080004d10 <_Z9constructPv>:

void construct(void *data) {
    80004d10:	ff010113          	addi	sp,sp,-16
    80004d14:	00113423          	sd	ra,8(sp)
    80004d18:	00813023          	sd	s0,0(sp)
    80004d1c:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    80004d20:	0a500613          	li	a2,165
    80004d24:	00700593          	li	a1,7
    80004d28:	00000097          	auipc	ra,0x0
    80004d2c:	fb8080e7          	jalr	-72(ra) # 80004ce0 <_Z6memsetPKvii>
}
    80004d30:	00813083          	ld	ra,8(sp)
    80004d34:	00013403          	ld	s0,0(sp)
    80004d38:	01010113          	addi	sp,sp,16
    80004d3c:	00008067          	ret

0000000080004d40 <_Z5checkPvm>:

int check(void *data, size_t size) {
    80004d40:	ff010113          	addi	sp,sp,-16
    80004d44:	00813423          	sd	s0,8(sp)
    80004d48:	01010413          	addi	s0,sp,16
    80004d4c:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    80004d50:	00000793          	li	a5,0
    int ret = 1;
    80004d54:	00100513          	li	a0,1
    80004d58:	0080006f          	j	80004d60 <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    80004d5c:	00178793          	addi	a5,a5,1
    80004d60:	00b7fe63          	bgeu	a5,a1,80004d7c <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80004d64:	00f60733          	add	a4,a2,a5
    80004d68:	00074683          	lbu	a3,0(a4)
    80004d6c:	0a500713          	li	a4,165
    80004d70:	fee686e3          	beq	a3,a4,80004d5c <_Z5checkPvm+0x1c>
            ret = 0;
    80004d74:	00000513          	li	a0,0
    80004d78:	fe5ff06f          	j	80004d5c <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    80004d7c:	00813403          	ld	s0,8(sp)
    80004d80:	01010113          	addi	sp,sp,16
    80004d84:	00008067          	ret

0000000080004d88 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    80004d88:	f8010113          	addi	sp,sp,-128
    80004d8c:	06113c23          	sd	ra,120(sp)
    80004d90:	06813823          	sd	s0,112(sp)
    80004d94:	06913423          	sd	s1,104(sp)
    80004d98:	07213023          	sd	s2,96(sp)
    80004d9c:	05313c23          	sd	s3,88(sp)
    80004da0:	05413823          	sd	s4,80(sp)
    80004da4:	05513423          	sd	s5,72(sp)
    80004da8:	05613023          	sd	s6,64(sp)
    80004dac:	03713c23          	sd	s7,56(sp)
    80004db0:	03813823          	sd	s8,48(sp)
    80004db4:	03913423          	sd	s9,40(sp)
    80004db8:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    80004dbc:	00053c03          	ld	s8,0(a0)
    80004dc0:	f9843423          	sd	s8,-120(s0)
    80004dc4:	00853783          	ld	a5,8(a0)
    80004dc8:	f8f43823          	sd	a5,-112(s0)
    80004dcc:	01053783          	ld	a5,16(a0)
    80004dd0:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    80004dd4:	000c079b          	sext.w	a5,s8
    80004dd8:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    80004ddc:	00379713          	slli	a4,a5,0x3
    80004de0:	00004797          	auipc	a5,0x4
    80004de4:	ab878793          	addi	a5,a5,-1352 # 80008898 <_ZL11CACHE_NAMES>
    80004de8:	00e787b3          	add	a5,a5,a4
    80004dec:	000c0b13          	mv	s6,s8
    80004df0:	00000693          	li	a3,0
    80004df4:	00000613          	li	a2,0
    80004df8:	000c0593          	mv	a1,s8
    80004dfc:	0007b503          	ld	a0,0(a5)
    80004e00:	ffffd097          	auipc	ra,0xffffd
    80004e04:	f44080e7          	jalr	-188(ra) # 80001d44 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004e08:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    80004e0c:	f9842b83          	lw	s7,-104(s0)
    80004e10:	004b9513          	slli	a0,s7,0x4
    80004e14:	ffffd097          	auipc	ra,0xffffd
    80004e18:	27c080e7          	jalr	636(ra) # 80002090 <_Z7kmallocm>
    80004e1c:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    80004e20:	00000493          	li	s1,0
    int size = 0;
    80004e24:	00000993          	li	s3,0
    80004e28:	0380006f          	j	80004e60 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80004e2c:	00499913          	slli	s2,s3,0x4
    80004e30:	012a8933          	add	s2,s5,s2
    80004e34:	000a0513          	mv	a0,s4
    80004e38:	ffffd097          	auipc	ra,0xffffd
    80004e3c:	dd4080e7          	jalr	-556(ra) # 80001c0c <_Z16kmem_cache_allocP12kmem_cache_s>
    80004e40:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80004e44:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80004e48:	0a500613          	li	a2,165
    80004e4c:	000c0593          	mv	a1,s8
    80004e50:	00000097          	auipc	ra,0x0
    80004e54:	e90080e7          	jalr	-368(ra) # 80004ce0 <_Z6memsetPKvii>
        }
        size++;
    80004e58:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80004e5c:	0014849b          	addiw	s1,s1,1
    80004e60:	0574da63          	bge	s1,s7,80004eb4 <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80004e64:	06400793          	li	a5,100
    80004e68:	02f4e7bb          	remw	a5,s1,a5
    80004e6c:	fc0790e3          	bnez	a5,80004e2c <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80004e70:	f9043c83          	ld	s9,-112(s0)
    80004e74:	00499913          	slli	s2,s3,0x4
    80004e78:	012a8933          	add	s2,s5,s2
    80004e7c:	000c8513          	mv	a0,s9
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	d8c080e7          	jalr	-628(ra) # 80001c0c <_Z16kmem_cache_allocP12kmem_cache_s>
    80004e88:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    80004e8c:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80004e90:	00700593          	li	a1,7
    80004e94:	00000097          	auipc	ra,0x0
    80004e98:	eac080e7          	jalr	-340(ra) # 80004d40 <_Z5checkPvm>
    80004e9c:	fa051ee3          	bnez	a0,80004e58 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    80004ea0:	00003517          	auipc	a0,0x3
    80004ea4:	6a850513          	addi	a0,a0,1704 # 80008548 <CONSOLE_STATUS+0x538>
    80004ea8:	ffffe097          	auipc	ra,0xffffe
    80004eac:	5d8080e7          	jalr	1496(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
    80004eb0:	fa9ff06f          	j	80004e58 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80004eb4:	000a0513          	mv	a0,s4
    80004eb8:	ffffd097          	auipc	ra,0xffffd
    80004ebc:	f80080e7          	jalr	-128(ra) # 80001e38 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    80004ec0:	f9043503          	ld	a0,-112(s0)
    80004ec4:	ffffd097          	auipc	ra,0xffffd
    80004ec8:	f74080e7          	jalr	-140(ra) # 80001e38 <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    80004ecc:	00000913          	li	s2,0
    80004ed0:	0300006f          	j	80004f00 <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004ed4:	000b0593          	mv	a1,s6
    80004ed8:	0440006f          	j	80004f1c <_Z4workPv+0x194>
            KConsole::trapPrintString("Value not correct!");
    80004edc:	00003517          	auipc	a0,0x3
    80004ee0:	66c50513          	addi	a0,a0,1644 # 80008548 <CONSOLE_STATUS+0x538>
    80004ee4:	ffffe097          	auipc	ra,0xffffe
    80004ee8:	59c080e7          	jalr	1436(ra) # 80003480 <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    80004eec:	0084b583          	ld	a1,8(s1)
    80004ef0:	0004b503          	ld	a0,0(s1)
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	ef4080e7          	jalr	-268(ra) # 80001de8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    80004efc:	0019091b          	addiw	s2,s2,1
    80004f00:	03395663          	bge	s2,s3,80004f2c <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004f04:	00491493          	slli	s1,s2,0x4
    80004f08:	009a84b3          	add	s1,s5,s1
    80004f0c:	0084b503          	ld	a0,8(s1)
    80004f10:	0004b783          	ld	a5,0(s1)
    80004f14:	fd4780e3          	beq	a5,s4,80004ed4 <_Z4workPv+0x14c>
    80004f18:	00700593          	li	a1,7
    80004f1c:	00000097          	auipc	ra,0x0
    80004f20:	e24080e7          	jalr	-476(ra) # 80004d40 <_Z5checkPvm>
    80004f24:	fc0514e3          	bnez	a0,80004eec <_Z4workPv+0x164>
    80004f28:	fb5ff06f          	j	80004edc <_Z4workPv+0x154>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    80004f2c:	000a8513          	mv	a0,s5
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	264080e7          	jalr	612(ra) # 80002194 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80004f38:	000a0513          	mv	a0,s4
    80004f3c:	ffffd097          	auipc	ra,0xffffd
    80004f40:	2e0080e7          	jalr	736(ra) # 8000221c <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    80004f44:	07813083          	ld	ra,120(sp)
    80004f48:	07013403          	ld	s0,112(sp)
    80004f4c:	06813483          	ld	s1,104(sp)
    80004f50:	06013903          	ld	s2,96(sp)
    80004f54:	05813983          	ld	s3,88(sp)
    80004f58:	05013a03          	ld	s4,80(sp)
    80004f5c:	04813a83          	ld	s5,72(sp)
    80004f60:	04013b03          	ld	s6,64(sp)
    80004f64:	03813b83          	ld	s7,56(sp)
    80004f68:	03013c03          	ld	s8,48(sp)
    80004f6c:	02813c83          	ld	s9,40(sp)
    80004f70:	08010113          	addi	sp,sp,128
    80004f74:	00008067          	ret

0000000080004f78 <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    80004f78:	fb010113          	addi	sp,sp,-80
    80004f7c:	04113423          	sd	ra,72(sp)
    80004f80:	04813023          	sd	s0,64(sp)
    80004f84:	02913c23          	sd	s1,56(sp)
    80004f88:	03213823          	sd	s2,48(sp)
    80004f8c:	03313423          	sd	s3,40(sp)
    80004f90:	05010413          	addi	s0,sp,80
    80004f94:	00050993          	mv	s3,a0
    80004f98:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    80004f9c:	00000493          	li	s1,0
    80004fa0:	00400793          	li	a5,4
    80004fa4:	0297c863          	blt	a5,s1,80004fd4 <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    80004fa8:	00093783          	ld	a5,0(s2)
    80004fac:	faf43c23          	sd	a5,-72(s0)
    80004fb0:	00893783          	ld	a5,8(s2)
    80004fb4:	fcf43023          	sd	a5,-64(s0)
    80004fb8:	01093783          	ld	a5,16(s2)
    80004fbc:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    80004fc0:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    80004fc4:	fb840513          	addi	a0,s0,-72
    80004fc8:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    80004fcc:	0014849b          	addiw	s1,s1,1
    80004fd0:	fd1ff06f          	j	80004fa0 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    80004fd4:	04813083          	ld	ra,72(sp)
    80004fd8:	04013403          	ld	s0,64(sp)
    80004fdc:	03813483          	ld	s1,56(sp)
    80004fe0:	03013903          	ld	s2,48(sp)
    80004fe4:	02813983          	ld	s3,40(sp)
    80004fe8:	05010113          	addi	sp,sp,80
    80004fec:	00008067          	ret

0000000080004ff0 <_Z7testOS2v>:

void testOS2()
{
    80004ff0:	fc010113          	addi	sp,sp,-64
    80004ff4:	02113c23          	sd	ra,56(sp)
    80004ff8:	02813823          	sd	s0,48(sp)
    80004ffc:	02913423          	sd	s1,40(sp)
    80005000:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    80005004:	00000693          	li	a3,0
    80005008:	00000617          	auipc	a2,0x0
    8000500c:	d0860613          	addi	a2,a2,-760 # 80004d10 <_Z9constructPv>
    80005010:	00700593          	li	a1,7
    80005014:	00003517          	auipc	a0,0x3
    80005018:	54c50513          	addi	a0,a0,1356 # 80008560 <CONSOLE_STATUS+0x550>
    8000501c:	ffffd097          	auipc	ra,0xffffd
    80005020:	d28080e7          	jalr	-728(ra) # 80001d44 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005024:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    80005028:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    8000502c:	3e800793          	li	a5,1000
    80005030:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    80005034:	00500613          	li	a2,5
    80005038:	fc840593          	addi	a1,s0,-56
    8000503c:	00000517          	auipc	a0,0x0
    80005040:	d4c50513          	addi	a0,a0,-692 # 80004d88 <_Z4workPv>
    80005044:	00000097          	auipc	ra,0x0
    80005048:	f34080e7          	jalr	-204(ra) # 80004f78 <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    8000504c:	00048513          	mv	a0,s1
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	1cc080e7          	jalr	460(ra) # 8000221c <_Z18kmem_cache_destroyP12kmem_cache_s>
    80005058:	03813083          	ld	ra,56(sp)
    8000505c:	03013403          	ld	s0,48(sp)
    80005060:	02813483          	ld	s1,40(sp)
    80005064:	04010113          	addi	sp,sp,64
    80005068:	00008067          	ret

000000008000506c <_ZN10KSemaphoreC1Ei>:
#include "../../h/KSemaphore.hpp"
#include "../../h/MemoryAllocator.hpp"
#include "../../h/Riscv.hpp"
#include "../../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    8000506c:	ff010113          	addi	sp,sp,-16
    80005070:	00813423          	sd	s0,8(sp)
    80005074:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80005078:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000507c:	00053423          	sd	zero,8(a0)
    80005080:	00053023          	sd	zero,0(a0)
}
    80005084:	00813403          	ld	s0,8(sp)
    80005088:	01010113          	addi	sp,sp,16
    8000508c:	00008067          	ret

0000000080005090 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80005090:	ff010113          	addi	sp,sp,-16
    80005094:	00813423          	sd	s0,8(sp)
    80005098:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000509c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800050a0:	00053783          	ld	a5,0(a0)
    800050a4:	00078e63          	beqz	a5,800050c0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800050a8:	00853783          	ld	a5,8(a0)
    800050ac:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800050b0:	00b53423          	sd	a1,8(a0)
    }
}
    800050b4:	00813403          	ld	s0,8(sp)
    800050b8:	01010113          	addi	sp,sp,16
    800050bc:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800050c0:	00b53423          	sd	a1,8(a0)
    800050c4:	00b53023          	sd	a1,0(a0)
    800050c8:	fedff06f          	j	800050b4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800050cc <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800050cc:	ff010113          	addi	sp,sp,-16
    800050d0:	00113423          	sd	ra,8(sp)
    800050d4:	00813023          	sd	s0,0(sp)
    800050d8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800050dc:	00004797          	auipc	a5,0x4
    800050e0:	87c7b783          	ld	a5,-1924(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x98>
    800050e4:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800050e8:	00200793          	li	a5,2
    800050ec:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800050f0:	00000097          	auipc	ra,0x0
    800050f4:	fa0080e7          	jalr	-96(ra) # 80005090 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	394080e7          	jalr	916(ra) # 8000248c <_ZN3PCB8dispatchEv>
}
    80005100:	00813083          	ld	ra,8(sp)
    80005104:	00013403          	ld	s0,0(sp)
    80005108:	01010113          	addi	sp,sp,16
    8000510c:	00008067          	ret

0000000080005110 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80005110:	00004797          	auipc	a5,0x4
    80005114:	8487b783          	ld	a5,-1976(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x98>
    80005118:	0007b783          	ld	a5,0(a5)
    8000511c:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80005120:	01052783          	lw	a5,16(a0)
    80005124:	fff7879b          	addiw	a5,a5,-1
    80005128:	00f52823          	sw	a5,16(a0)
    8000512c:	02079713          	slli	a4,a5,0x20
    80005130:	00074663          	bltz	a4,8000513c <_ZN10KSemaphore4waitEv+0x2c>
}
    80005134:	00000513          	li	a0,0
    80005138:	00008067          	ret
{
    8000513c:	ff010113          	addi	sp,sp,-16
    80005140:	00113423          	sd	ra,8(sp)
    80005144:	00813023          	sd	s0,0(sp)
    80005148:	01010413          	addi	s0,sp,16
        block();
    8000514c:	00000097          	auipc	ra,0x0
    80005150:	f80080e7          	jalr	-128(ra) # 800050cc <_ZN10KSemaphore5blockEv>
}
    80005154:	00000513          	li	a0,0
    80005158:	00813083          	ld	ra,8(sp)
    8000515c:	00013403          	ld	s0,0(sp)
    80005160:	01010113          	addi	sp,sp,16
    80005164:	00008067          	ret

0000000080005168 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80005168:	ff010113          	addi	sp,sp,-16
    8000516c:	00813423          	sd	s0,8(sp)
    80005170:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80005174:	00053503          	ld	a0,0(a0)
    80005178:	00813403          	ld	s0,8(sp)
    8000517c:	01010113          	addi	sp,sp,16
    80005180:	00008067          	ret

0000000080005184 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80005184:	ff010113          	addi	sp,sp,-16
    80005188:	00813423          	sd	s0,8(sp)
    8000518c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80005190:	00053783          	ld	a5,0(a0)
    80005194:	00078c63          	beqz	a5,800051ac <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80005198:	0087b703          	ld	a4,8(a5)
    8000519c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800051a0:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800051a4:	00053783          	ld	a5,0(a0)
    800051a8:	00078863          	beqz	a5,800051b8 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800051ac:	00813403          	ld	s0,8(sp)
    800051b0:	01010113          	addi	sp,sp,16
    800051b4:	00008067          	ret
        tailBlocked =0;
    800051b8:	00053423          	sd	zero,8(a0)
    800051bc:	ff1ff06f          	j	800051ac <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800051c0 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800051c0:	fe010113          	addi	sp,sp,-32
    800051c4:	00113c23          	sd	ra,24(sp)
    800051c8:	00813823          	sd	s0,16(sp)
    800051cc:	00913423          	sd	s1,8(sp)
    800051d0:	01213023          	sd	s2,0(sp)
    800051d4:	02010413          	addi	s0,sp,32
    800051d8:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800051dc:	00090513          	mv	a0,s2
    800051e0:	00000097          	auipc	ra,0x0
    800051e4:	f88080e7          	jalr	-120(ra) # 80005168 <_ZN10KSemaphore15getFirstBlockedEv>
    800051e8:	00050493          	mv	s1,a0
    800051ec:	02050463          	beqz	a0,80005214 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800051f0:	00090513          	mv	a0,s2
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	f90080e7          	jalr	-112(ra) # 80005184 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800051fc:	00100793          	li	a5,1
    80005200:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80005204:	00048513          	mv	a0,s1
    80005208:	ffffe097          	auipc	ra,0xffffe
    8000520c:	530080e7          	jalr	1328(ra) # 80003738 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80005210:	fcdff06f          	j	800051dc <_ZN10KSemaphoreD1Ev+0x1c>
}
    80005214:	01813083          	ld	ra,24(sp)
    80005218:	01013403          	ld	s0,16(sp)
    8000521c:	00813483          	ld	s1,8(sp)
    80005220:	00013903          	ld	s2,0(sp)
    80005224:	02010113          	addi	sp,sp,32
    80005228:	00008067          	ret

000000008000522c <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    8000522c:	fe010113          	addi	sp,sp,-32
    80005230:	00113c23          	sd	ra,24(sp)
    80005234:	00813823          	sd	s0,16(sp)
    80005238:	00913423          	sd	s1,8(sp)
    8000523c:	01213023          	sd	s2,0(sp)
    80005240:	02010413          	addi	s0,sp,32
    80005244:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80005248:	00000097          	auipc	ra,0x0
    8000524c:	f20080e7          	jalr	-224(ra) # 80005168 <_ZN10KSemaphore15getFirstBlockedEv>
    80005250:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80005254:	00090513          	mv	a0,s2
    80005258:	00000097          	auipc	ra,0x0
    8000525c:	f2c080e7          	jalr	-212(ra) # 80005184 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80005260:	00048863          	beqz	s1,80005270 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80005264:	00048513          	mv	a0,s1
    80005268:	ffffe097          	auipc	ra,0xffffe
    8000526c:	4d0080e7          	jalr	1232(ra) # 80003738 <_ZN9Scheduler3putEP3PCB>
    }
}
    80005270:	01813083          	ld	ra,24(sp)
    80005274:	01013403          	ld	s0,16(sp)
    80005278:	00813483          	ld	s1,8(sp)
    8000527c:	00013903          	ld	s2,0(sp)
    80005280:	02010113          	addi	sp,sp,32
    80005284:	00008067          	ret

0000000080005288 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80005288:	01052783          	lw	a5,16(a0)
    8000528c:	0017879b          	addiw	a5,a5,1
    80005290:	0007871b          	sext.w	a4,a5
    80005294:	00f52823          	sw	a5,16(a0)
    80005298:	00e05663          	blez	a4,800052a4 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000529c:	00000513          	li	a0,0
    800052a0:	00008067          	ret
uint64 KSemaphore::signal() {
    800052a4:	ff010113          	addi	sp,sp,-16
    800052a8:	00113423          	sd	ra,8(sp)
    800052ac:	00813023          	sd	s0,0(sp)
    800052b0:	01010413          	addi	s0,sp,16
        unblock();
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	f78080e7          	jalr	-136(ra) # 8000522c <_ZN10KSemaphore7unblockEv>
}
    800052bc:	00000513          	li	a0,0
    800052c0:	00813083          	ld	ra,8(sp)
    800052c4:	00013403          	ld	s0,0(sp)
    800052c8:	01010113          	addi	sp,sp,16
    800052cc:	00008067          	ret

00000000800052d0 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800052d0:	ff010113          	addi	sp,sp,-16
    800052d4:	00113423          	sd	ra,8(sp)
    800052d8:	00813023          	sd	s0,0(sp)
    800052dc:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    800052e0:	00003797          	auipc	a5,0x3
    800052e4:	6007b783          	ld	a5,1536(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800052e8:	0007b503          	ld	a0,0(a5)
    800052ec:	ffffd097          	auipc	ra,0xffffd
    800052f0:	920080e7          	jalr	-1760(ra) # 80001c0c <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800052f4:	00813083          	ld	ra,8(sp)
    800052f8:	00013403          	ld	s0,0(sp)
    800052fc:	01010113          	addi	sp,sp,16
    80005300:	00008067          	ret

0000000080005304 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80005304:	fd010113          	addi	sp,sp,-48
    80005308:	02113423          	sd	ra,40(sp)
    8000530c:	02813023          	sd	s0,32(sp)
    80005310:	00913c23          	sd	s1,24(sp)
    80005314:	01213823          	sd	s2,16(sp)
    80005318:	01313423          	sd	s3,8(sp)
    8000531c:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80005320:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80005324:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80005328:	01800513          	li	a0,24
    8000532c:	00000097          	auipc	ra,0x0
    80005330:	fa4080e7          	jalr	-92(ra) # 800052d0 <_ZN10KSemaphorenwEm>
    80005334:	00050493          	mv	s1,a0
    80005338:	00050863          	beqz	a0,80005348 <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    8000533c:	0009859b          	sext.w	a1,s3
    80005340:	00000097          	auipc	ra,0x0
    80005344:	d2c080e7          	jalr	-724(ra) # 8000506c <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005348:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    8000534c:	02048663          	beqz	s1,80005378 <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    80005350:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005354:	fffff097          	auipc	ra,0xfffff
    80005358:	ffc080e7          	jalr	-4(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000535c:	02813083          	ld	ra,40(sp)
    80005360:	02013403          	ld	s0,32(sp)
    80005364:	01813483          	ld	s1,24(sp)
    80005368:	01013903          	ld	s2,16(sp)
    8000536c:	00813983          	ld	s3,8(sp)
    80005370:	03010113          	addi	sp,sp,48
    80005374:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80005378:	fff00513          	li	a0,-1
    8000537c:	fd9ff06f          	j	80005354 <_ZN10KSemaphore14semOpenHandlerEv+0x50>

0000000080005380 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005380:	ff010113          	addi	sp,sp,-16
    80005384:	00113423          	sd	ra,8(sp)
    80005388:	00813023          	sd	s0,0(sp)
    8000538c:	01010413          	addi	s0,sp,16
    80005390:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80005394:	00003797          	auipc	a5,0x3
    80005398:	54c7b783          	ld	a5,1356(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000539c:	0007b503          	ld	a0,0(a5)
    800053a0:	ffffd097          	auipc	ra,0xffffd
    800053a4:	a48080e7          	jalr	-1464(ra) # 80001de8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    800053a8:	00813083          	ld	ra,8(sp)
    800053ac:	00013403          	ld	s0,0(sp)
    800053b0:	01010113          	addi	sp,sp,16
    800053b4:	00008067          	ret

00000000800053b8 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800053b8:	ff010113          	addi	sp,sp,-16
    800053bc:	00113423          	sd	ra,8(sp)
    800053c0:	00813023          	sd	s0,0(sp)
    800053c4:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800053c8:	00058513          	mv	a0,a1
    kSem->wait();
    800053cc:	00000097          	auipc	ra,0x0
    800053d0:	d44080e7          	jalr	-700(ra) # 80005110 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800053d4:	00003797          	auipc	a5,0x3
    800053d8:	5847b783          	ld	a5,1412(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x98>
    800053dc:	0007b783          	ld	a5,0(a5)
    800053e0:	0587c783          	lbu	a5,88(a5)
    800053e4:	02078063          	beqz	a5,80005404 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800053e8:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800053ec:	fffff097          	auipc	ra,0xfffff
    800053f0:	f64080e7          	jalr	-156(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    800053f4:	00813083          	ld	ra,8(sp)
    800053f8:	00013403          	ld	s0,0(sp)
    800053fc:	01010113          	addi	sp,sp,16
    80005400:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80005404:	00000513          	li	a0,0
    80005408:	fe5ff06f          	j	800053ec <_ZN10KSemaphore14semWaitHandlerEv+0x34>

000000008000540c <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    8000540c:	ff010113          	addi	sp,sp,-16
    80005410:	00113423          	sd	ra,8(sp)
    80005414:	00813023          	sd	s0,0(sp)
    80005418:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000541c:	00058513          	mv	a0,a1
    if (kSem == 0)
    80005420:	02050463          	beqz	a0,80005448 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80005424:	00000097          	auipc	ra,0x0
    80005428:	e64080e7          	jalr	-412(ra) # 80005288 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    8000542c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005430:	fffff097          	auipc	ra,0xfffff
    80005434:	f20080e7          	jalr	-224(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005438:	00813083          	ld	ra,8(sp)
    8000543c:	00013403          	ld	s0,0(sp)
    80005440:	01010113          	addi	sp,sp,16
    80005444:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005448:	00100513          	li	a0,1
    8000544c:	fe5ff06f          	j	80005430 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005450 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005450:	fe010113          	addi	sp,sp,-32
    80005454:	00113c23          	sd	ra,24(sp)
    80005458:	00813823          	sd	s0,16(sp)
    8000545c:	00913423          	sd	s1,8(sp)
    80005460:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005464:	00058493          	mv	s1,a1
    delete kSem;
    80005468:	00048e63          	beqz	s1,80005484 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    8000546c:	00048513          	mv	a0,s1
    80005470:	00000097          	auipc	ra,0x0
    80005474:	d50080e7          	jalr	-688(ra) # 800051c0 <_ZN10KSemaphoreD1Ev>
    80005478:	00048513          	mv	a0,s1
    8000547c:	00000097          	auipc	ra,0x0
    80005480:	f04080e7          	jalr	-252(ra) # 80005380 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005484:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005488:	fffff097          	auipc	ra,0xfffff
    8000548c:	ec8080e7          	jalr	-312(ra) # 80004350 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005490:	01813083          	ld	ra,24(sp)
    80005494:	01013403          	ld	s0,16(sp)
    80005498:	00813483          	ld	s1,8(sp)
    8000549c:	02010113          	addi	sp,sp,32
    800054a0:	00008067          	ret

00000000800054a4 <start>:
    800054a4:	ff010113          	addi	sp,sp,-16
    800054a8:	00813423          	sd	s0,8(sp)
    800054ac:	01010413          	addi	s0,sp,16
    800054b0:	300027f3          	csrr	a5,mstatus
    800054b4:	ffffe737          	lui	a4,0xffffe
    800054b8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffe77ff>
    800054bc:	00e7f7b3          	and	a5,a5,a4
    800054c0:	00001737          	lui	a4,0x1
    800054c4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800054c8:	00e7e7b3          	or	a5,a5,a4
    800054cc:	30079073          	csrw	mstatus,a5
    800054d0:	00000797          	auipc	a5,0x0
    800054d4:	16078793          	addi	a5,a5,352 # 80005630 <system_main>
    800054d8:	34179073          	csrw	mepc,a5
    800054dc:	00000793          	li	a5,0
    800054e0:	18079073          	csrw	satp,a5
    800054e4:	000107b7          	lui	a5,0x10
    800054e8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800054ec:	30279073          	csrw	medeleg,a5
    800054f0:	30379073          	csrw	mideleg,a5
    800054f4:	104027f3          	csrr	a5,sie
    800054f8:	2227e793          	ori	a5,a5,546
    800054fc:	10479073          	csrw	sie,a5
    80005500:	fff00793          	li	a5,-1
    80005504:	00a7d793          	srli	a5,a5,0xa
    80005508:	3b079073          	csrw	pmpaddr0,a5
    8000550c:	00f00793          	li	a5,15
    80005510:	3a079073          	csrw	pmpcfg0,a5
    80005514:	f14027f3          	csrr	a5,mhartid
    80005518:	0200c737          	lui	a4,0x200c
    8000551c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005520:	0007869b          	sext.w	a3,a5
    80005524:	00269713          	slli	a4,a3,0x2
    80005528:	000f4637          	lui	a2,0xf4
    8000552c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005530:	00d70733          	add	a4,a4,a3
    80005534:	0037979b          	slliw	a5,a5,0x3
    80005538:	020046b7          	lui	a3,0x2004
    8000553c:	00d787b3          	add	a5,a5,a3
    80005540:	00c585b3          	add	a1,a1,a2
    80005544:	00371693          	slli	a3,a4,0x3
    80005548:	0000b717          	auipc	a4,0xb
    8000554c:	55870713          	addi	a4,a4,1368 # 80010aa0 <timer_scratch>
    80005550:	00b7b023          	sd	a1,0(a5)
    80005554:	00d70733          	add	a4,a4,a3
    80005558:	00f73c23          	sd	a5,24(a4)
    8000555c:	02c73023          	sd	a2,32(a4)
    80005560:	34071073          	csrw	mscratch,a4
    80005564:	00000797          	auipc	a5,0x0
    80005568:	6ec78793          	addi	a5,a5,1772 # 80005c50 <timervec>
    8000556c:	30579073          	csrw	mtvec,a5
    80005570:	300027f3          	csrr	a5,mstatus
    80005574:	0087e793          	ori	a5,a5,8
    80005578:	30079073          	csrw	mstatus,a5
    8000557c:	304027f3          	csrr	a5,mie
    80005580:	0807e793          	ori	a5,a5,128
    80005584:	30479073          	csrw	mie,a5
    80005588:	f14027f3          	csrr	a5,mhartid
    8000558c:	0007879b          	sext.w	a5,a5
    80005590:	00078213          	mv	tp,a5
    80005594:	30200073          	mret
    80005598:	00813403          	ld	s0,8(sp)
    8000559c:	01010113          	addi	sp,sp,16
    800055a0:	00008067          	ret

00000000800055a4 <timerinit>:
    800055a4:	ff010113          	addi	sp,sp,-16
    800055a8:	00813423          	sd	s0,8(sp)
    800055ac:	01010413          	addi	s0,sp,16
    800055b0:	f14027f3          	csrr	a5,mhartid
    800055b4:	0200c737          	lui	a4,0x200c
    800055b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800055bc:	0007869b          	sext.w	a3,a5
    800055c0:	00269713          	slli	a4,a3,0x2
    800055c4:	000f4637          	lui	a2,0xf4
    800055c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800055cc:	00d70733          	add	a4,a4,a3
    800055d0:	0037979b          	slliw	a5,a5,0x3
    800055d4:	020046b7          	lui	a3,0x2004
    800055d8:	00d787b3          	add	a5,a5,a3
    800055dc:	00c585b3          	add	a1,a1,a2
    800055e0:	00371693          	slli	a3,a4,0x3
    800055e4:	0000b717          	auipc	a4,0xb
    800055e8:	4bc70713          	addi	a4,a4,1212 # 80010aa0 <timer_scratch>
    800055ec:	00b7b023          	sd	a1,0(a5)
    800055f0:	00d70733          	add	a4,a4,a3
    800055f4:	00f73c23          	sd	a5,24(a4)
    800055f8:	02c73023          	sd	a2,32(a4)
    800055fc:	34071073          	csrw	mscratch,a4
    80005600:	00000797          	auipc	a5,0x0
    80005604:	65078793          	addi	a5,a5,1616 # 80005c50 <timervec>
    80005608:	30579073          	csrw	mtvec,a5
    8000560c:	300027f3          	csrr	a5,mstatus
    80005610:	0087e793          	ori	a5,a5,8
    80005614:	30079073          	csrw	mstatus,a5
    80005618:	304027f3          	csrr	a5,mie
    8000561c:	0807e793          	ori	a5,a5,128
    80005620:	30479073          	csrw	mie,a5
    80005624:	00813403          	ld	s0,8(sp)
    80005628:	01010113          	addi	sp,sp,16
    8000562c:	00008067          	ret

0000000080005630 <system_main>:
    80005630:	fe010113          	addi	sp,sp,-32
    80005634:	00813823          	sd	s0,16(sp)
    80005638:	00913423          	sd	s1,8(sp)
    8000563c:	00113c23          	sd	ra,24(sp)
    80005640:	02010413          	addi	s0,sp,32
    80005644:	00000097          	auipc	ra,0x0
    80005648:	0c4080e7          	jalr	196(ra) # 80005708 <cpuid>
    8000564c:	00003497          	auipc	s1,0x3
    80005650:	34448493          	addi	s1,s1,836 # 80008990 <started>
    80005654:	02050263          	beqz	a0,80005678 <system_main+0x48>
    80005658:	0004a783          	lw	a5,0(s1)
    8000565c:	0007879b          	sext.w	a5,a5
    80005660:	fe078ce3          	beqz	a5,80005658 <system_main+0x28>
    80005664:	0ff0000f          	fence
    80005668:	00003517          	auipc	a0,0x3
    8000566c:	f6050513          	addi	a0,a0,-160 # 800085c8 <CONSOLE_STATUS+0x5b8>
    80005670:	00001097          	auipc	ra,0x1
    80005674:	a7c080e7          	jalr	-1412(ra) # 800060ec <panic>
    80005678:	00001097          	auipc	ra,0x1
    8000567c:	9d0080e7          	jalr	-1584(ra) # 80006048 <consoleinit>
    80005680:	00001097          	auipc	ra,0x1
    80005684:	15c080e7          	jalr	348(ra) # 800067dc <printfinit>
    80005688:	00003517          	auipc	a0,0x3
    8000568c:	af850513          	addi	a0,a0,-1288 # 80008180 <CONSOLE_STATUS+0x170>
    80005690:	00001097          	auipc	ra,0x1
    80005694:	ab8080e7          	jalr	-1352(ra) # 80006148 <__printf>
    80005698:	00003517          	auipc	a0,0x3
    8000569c:	f0050513          	addi	a0,a0,-256 # 80008598 <CONSOLE_STATUS+0x588>
    800056a0:	00001097          	auipc	ra,0x1
    800056a4:	aa8080e7          	jalr	-1368(ra) # 80006148 <__printf>
    800056a8:	00003517          	auipc	a0,0x3
    800056ac:	ad850513          	addi	a0,a0,-1320 # 80008180 <CONSOLE_STATUS+0x170>
    800056b0:	00001097          	auipc	ra,0x1
    800056b4:	a98080e7          	jalr	-1384(ra) # 80006148 <__printf>
    800056b8:	00001097          	auipc	ra,0x1
    800056bc:	4b0080e7          	jalr	1200(ra) # 80006b68 <kinit>
    800056c0:	00000097          	auipc	ra,0x0
    800056c4:	148080e7          	jalr	328(ra) # 80005808 <trapinit>
    800056c8:	00000097          	auipc	ra,0x0
    800056cc:	16c080e7          	jalr	364(ra) # 80005834 <trapinithart>
    800056d0:	00000097          	auipc	ra,0x0
    800056d4:	5c0080e7          	jalr	1472(ra) # 80005c90 <plicinit>
    800056d8:	00000097          	auipc	ra,0x0
    800056dc:	5e0080e7          	jalr	1504(ra) # 80005cb8 <plicinithart>
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	078080e7          	jalr	120(ra) # 80005758 <userinit>
    800056e8:	0ff0000f          	fence
    800056ec:	00100793          	li	a5,1
    800056f0:	00003517          	auipc	a0,0x3
    800056f4:	ec050513          	addi	a0,a0,-320 # 800085b0 <CONSOLE_STATUS+0x5a0>
    800056f8:	00f4a023          	sw	a5,0(s1)
    800056fc:	00001097          	auipc	ra,0x1
    80005700:	a4c080e7          	jalr	-1460(ra) # 80006148 <__printf>
    80005704:	0000006f          	j	80005704 <system_main+0xd4>

0000000080005708 <cpuid>:
    80005708:	ff010113          	addi	sp,sp,-16
    8000570c:	00813423          	sd	s0,8(sp)
    80005710:	01010413          	addi	s0,sp,16
    80005714:	00020513          	mv	a0,tp
    80005718:	00813403          	ld	s0,8(sp)
    8000571c:	0005051b          	sext.w	a0,a0
    80005720:	01010113          	addi	sp,sp,16
    80005724:	00008067          	ret

0000000080005728 <mycpu>:
    80005728:	ff010113          	addi	sp,sp,-16
    8000572c:	00813423          	sd	s0,8(sp)
    80005730:	01010413          	addi	s0,sp,16
    80005734:	00020793          	mv	a5,tp
    80005738:	00813403          	ld	s0,8(sp)
    8000573c:	0007879b          	sext.w	a5,a5
    80005740:	00779793          	slli	a5,a5,0x7
    80005744:	0000c517          	auipc	a0,0xc
    80005748:	38c50513          	addi	a0,a0,908 # 80011ad0 <cpus>
    8000574c:	00f50533          	add	a0,a0,a5
    80005750:	01010113          	addi	sp,sp,16
    80005754:	00008067          	ret

0000000080005758 <userinit>:
    80005758:	ff010113          	addi	sp,sp,-16
    8000575c:	00813423          	sd	s0,8(sp)
    80005760:	01010413          	addi	s0,sp,16
    80005764:	00813403          	ld	s0,8(sp)
    80005768:	01010113          	addi	sp,sp,16
    8000576c:	ffffe317          	auipc	t1,0xffffe
    80005770:	0cc30067          	jr	204(t1) # 80003838 <main>

0000000080005774 <either_copyout>:
    80005774:	ff010113          	addi	sp,sp,-16
    80005778:	00813023          	sd	s0,0(sp)
    8000577c:	00113423          	sd	ra,8(sp)
    80005780:	01010413          	addi	s0,sp,16
    80005784:	02051663          	bnez	a0,800057b0 <either_copyout+0x3c>
    80005788:	00058513          	mv	a0,a1
    8000578c:	00060593          	mv	a1,a2
    80005790:	0006861b          	sext.w	a2,a3
    80005794:	00002097          	auipc	ra,0x2
    80005798:	c60080e7          	jalr	-928(ra) # 800073f4 <__memmove>
    8000579c:	00813083          	ld	ra,8(sp)
    800057a0:	00013403          	ld	s0,0(sp)
    800057a4:	00000513          	li	a0,0
    800057a8:	01010113          	addi	sp,sp,16
    800057ac:	00008067          	ret
    800057b0:	00003517          	auipc	a0,0x3
    800057b4:	e4050513          	addi	a0,a0,-448 # 800085f0 <CONSOLE_STATUS+0x5e0>
    800057b8:	00001097          	auipc	ra,0x1
    800057bc:	934080e7          	jalr	-1740(ra) # 800060ec <panic>

00000000800057c0 <either_copyin>:
    800057c0:	ff010113          	addi	sp,sp,-16
    800057c4:	00813023          	sd	s0,0(sp)
    800057c8:	00113423          	sd	ra,8(sp)
    800057cc:	01010413          	addi	s0,sp,16
    800057d0:	02059463          	bnez	a1,800057f8 <either_copyin+0x38>
    800057d4:	00060593          	mv	a1,a2
    800057d8:	0006861b          	sext.w	a2,a3
    800057dc:	00002097          	auipc	ra,0x2
    800057e0:	c18080e7          	jalr	-1000(ra) # 800073f4 <__memmove>
    800057e4:	00813083          	ld	ra,8(sp)
    800057e8:	00013403          	ld	s0,0(sp)
    800057ec:	00000513          	li	a0,0
    800057f0:	01010113          	addi	sp,sp,16
    800057f4:	00008067          	ret
    800057f8:	00003517          	auipc	a0,0x3
    800057fc:	e2050513          	addi	a0,a0,-480 # 80008618 <CONSOLE_STATUS+0x608>
    80005800:	00001097          	auipc	ra,0x1
    80005804:	8ec080e7          	jalr	-1812(ra) # 800060ec <panic>

0000000080005808 <trapinit>:
    80005808:	ff010113          	addi	sp,sp,-16
    8000580c:	00813423          	sd	s0,8(sp)
    80005810:	01010413          	addi	s0,sp,16
    80005814:	00813403          	ld	s0,8(sp)
    80005818:	00003597          	auipc	a1,0x3
    8000581c:	e2858593          	addi	a1,a1,-472 # 80008640 <CONSOLE_STATUS+0x630>
    80005820:	0000c517          	auipc	a0,0xc
    80005824:	33050513          	addi	a0,a0,816 # 80011b50 <tickslock>
    80005828:	01010113          	addi	sp,sp,16
    8000582c:	00001317          	auipc	t1,0x1
    80005830:	5cc30067          	jr	1484(t1) # 80006df8 <initlock>

0000000080005834 <trapinithart>:
    80005834:	ff010113          	addi	sp,sp,-16
    80005838:	00813423          	sd	s0,8(sp)
    8000583c:	01010413          	addi	s0,sp,16
    80005840:	00000797          	auipc	a5,0x0
    80005844:	30078793          	addi	a5,a5,768 # 80005b40 <kernelvec>
    80005848:	10579073          	csrw	stvec,a5
    8000584c:	00813403          	ld	s0,8(sp)
    80005850:	01010113          	addi	sp,sp,16
    80005854:	00008067          	ret

0000000080005858 <usertrap>:
    80005858:	ff010113          	addi	sp,sp,-16
    8000585c:	00813423          	sd	s0,8(sp)
    80005860:	01010413          	addi	s0,sp,16
    80005864:	00813403          	ld	s0,8(sp)
    80005868:	01010113          	addi	sp,sp,16
    8000586c:	00008067          	ret

0000000080005870 <usertrapret>:
    80005870:	ff010113          	addi	sp,sp,-16
    80005874:	00813423          	sd	s0,8(sp)
    80005878:	01010413          	addi	s0,sp,16
    8000587c:	00813403          	ld	s0,8(sp)
    80005880:	01010113          	addi	sp,sp,16
    80005884:	00008067          	ret

0000000080005888 <kerneltrap>:
    80005888:	fe010113          	addi	sp,sp,-32
    8000588c:	00813823          	sd	s0,16(sp)
    80005890:	00113c23          	sd	ra,24(sp)
    80005894:	00913423          	sd	s1,8(sp)
    80005898:	02010413          	addi	s0,sp,32
    8000589c:	142025f3          	csrr	a1,scause
    800058a0:	100027f3          	csrr	a5,sstatus
    800058a4:	0027f793          	andi	a5,a5,2
    800058a8:	10079c63          	bnez	a5,800059c0 <kerneltrap+0x138>
    800058ac:	142027f3          	csrr	a5,scause
    800058b0:	0207ce63          	bltz	a5,800058ec <kerneltrap+0x64>
    800058b4:	00003517          	auipc	a0,0x3
    800058b8:	dd450513          	addi	a0,a0,-556 # 80008688 <CONSOLE_STATUS+0x678>
    800058bc:	00001097          	auipc	ra,0x1
    800058c0:	88c080e7          	jalr	-1908(ra) # 80006148 <__printf>
    800058c4:	141025f3          	csrr	a1,sepc
    800058c8:	14302673          	csrr	a2,stval
    800058cc:	00003517          	auipc	a0,0x3
    800058d0:	dcc50513          	addi	a0,a0,-564 # 80008698 <CONSOLE_STATUS+0x688>
    800058d4:	00001097          	auipc	ra,0x1
    800058d8:	874080e7          	jalr	-1932(ra) # 80006148 <__printf>
    800058dc:	00003517          	auipc	a0,0x3
    800058e0:	dd450513          	addi	a0,a0,-556 # 800086b0 <CONSOLE_STATUS+0x6a0>
    800058e4:	00001097          	auipc	ra,0x1
    800058e8:	808080e7          	jalr	-2040(ra) # 800060ec <panic>
    800058ec:	0ff7f713          	andi	a4,a5,255
    800058f0:	00900693          	li	a3,9
    800058f4:	04d70063          	beq	a4,a3,80005934 <kerneltrap+0xac>
    800058f8:	fff00713          	li	a4,-1
    800058fc:	03f71713          	slli	a4,a4,0x3f
    80005900:	00170713          	addi	a4,a4,1
    80005904:	fae798e3          	bne	a5,a4,800058b4 <kerneltrap+0x2c>
    80005908:	00000097          	auipc	ra,0x0
    8000590c:	e00080e7          	jalr	-512(ra) # 80005708 <cpuid>
    80005910:	06050663          	beqz	a0,8000597c <kerneltrap+0xf4>
    80005914:	144027f3          	csrr	a5,sip
    80005918:	ffd7f793          	andi	a5,a5,-3
    8000591c:	14479073          	csrw	sip,a5
    80005920:	01813083          	ld	ra,24(sp)
    80005924:	01013403          	ld	s0,16(sp)
    80005928:	00813483          	ld	s1,8(sp)
    8000592c:	02010113          	addi	sp,sp,32
    80005930:	00008067          	ret
    80005934:	00000097          	auipc	ra,0x0
    80005938:	3d0080e7          	jalr	976(ra) # 80005d04 <plic_claim>
    8000593c:	00a00793          	li	a5,10
    80005940:	00050493          	mv	s1,a0
    80005944:	06f50863          	beq	a0,a5,800059b4 <kerneltrap+0x12c>
    80005948:	fc050ce3          	beqz	a0,80005920 <kerneltrap+0x98>
    8000594c:	00050593          	mv	a1,a0
    80005950:	00003517          	auipc	a0,0x3
    80005954:	d1850513          	addi	a0,a0,-744 # 80008668 <CONSOLE_STATUS+0x658>
    80005958:	00000097          	auipc	ra,0x0
    8000595c:	7f0080e7          	jalr	2032(ra) # 80006148 <__printf>
    80005960:	01013403          	ld	s0,16(sp)
    80005964:	01813083          	ld	ra,24(sp)
    80005968:	00048513          	mv	a0,s1
    8000596c:	00813483          	ld	s1,8(sp)
    80005970:	02010113          	addi	sp,sp,32
    80005974:	00000317          	auipc	t1,0x0
    80005978:	3c830067          	jr	968(t1) # 80005d3c <plic_complete>
    8000597c:	0000c517          	auipc	a0,0xc
    80005980:	1d450513          	addi	a0,a0,468 # 80011b50 <tickslock>
    80005984:	00001097          	auipc	ra,0x1
    80005988:	498080e7          	jalr	1176(ra) # 80006e1c <acquire>
    8000598c:	00003717          	auipc	a4,0x3
    80005990:	00870713          	addi	a4,a4,8 # 80008994 <ticks>
    80005994:	00072783          	lw	a5,0(a4)
    80005998:	0000c517          	auipc	a0,0xc
    8000599c:	1b850513          	addi	a0,a0,440 # 80011b50 <tickslock>
    800059a0:	0017879b          	addiw	a5,a5,1
    800059a4:	00f72023          	sw	a5,0(a4)
    800059a8:	00001097          	auipc	ra,0x1
    800059ac:	540080e7          	jalr	1344(ra) # 80006ee8 <release>
    800059b0:	f65ff06f          	j	80005914 <kerneltrap+0x8c>
    800059b4:	00001097          	auipc	ra,0x1
    800059b8:	09c080e7          	jalr	156(ra) # 80006a50 <uartintr>
    800059bc:	fa5ff06f          	j	80005960 <kerneltrap+0xd8>
    800059c0:	00003517          	auipc	a0,0x3
    800059c4:	c8850513          	addi	a0,a0,-888 # 80008648 <CONSOLE_STATUS+0x638>
    800059c8:	00000097          	auipc	ra,0x0
    800059cc:	724080e7          	jalr	1828(ra) # 800060ec <panic>

00000000800059d0 <clockintr>:
    800059d0:	fe010113          	addi	sp,sp,-32
    800059d4:	00813823          	sd	s0,16(sp)
    800059d8:	00913423          	sd	s1,8(sp)
    800059dc:	00113c23          	sd	ra,24(sp)
    800059e0:	02010413          	addi	s0,sp,32
    800059e4:	0000c497          	auipc	s1,0xc
    800059e8:	16c48493          	addi	s1,s1,364 # 80011b50 <tickslock>
    800059ec:	00048513          	mv	a0,s1
    800059f0:	00001097          	auipc	ra,0x1
    800059f4:	42c080e7          	jalr	1068(ra) # 80006e1c <acquire>
    800059f8:	00003717          	auipc	a4,0x3
    800059fc:	f9c70713          	addi	a4,a4,-100 # 80008994 <ticks>
    80005a00:	00072783          	lw	a5,0(a4)
    80005a04:	01013403          	ld	s0,16(sp)
    80005a08:	01813083          	ld	ra,24(sp)
    80005a0c:	00048513          	mv	a0,s1
    80005a10:	0017879b          	addiw	a5,a5,1
    80005a14:	00813483          	ld	s1,8(sp)
    80005a18:	00f72023          	sw	a5,0(a4)
    80005a1c:	02010113          	addi	sp,sp,32
    80005a20:	00001317          	auipc	t1,0x1
    80005a24:	4c830067          	jr	1224(t1) # 80006ee8 <release>

0000000080005a28 <devintr>:
    80005a28:	142027f3          	csrr	a5,scause
    80005a2c:	00000513          	li	a0,0
    80005a30:	0007c463          	bltz	a5,80005a38 <devintr+0x10>
    80005a34:	00008067          	ret
    80005a38:	fe010113          	addi	sp,sp,-32
    80005a3c:	00813823          	sd	s0,16(sp)
    80005a40:	00113c23          	sd	ra,24(sp)
    80005a44:	00913423          	sd	s1,8(sp)
    80005a48:	02010413          	addi	s0,sp,32
    80005a4c:	0ff7f713          	andi	a4,a5,255
    80005a50:	00900693          	li	a3,9
    80005a54:	04d70c63          	beq	a4,a3,80005aac <devintr+0x84>
    80005a58:	fff00713          	li	a4,-1
    80005a5c:	03f71713          	slli	a4,a4,0x3f
    80005a60:	00170713          	addi	a4,a4,1
    80005a64:	00e78c63          	beq	a5,a4,80005a7c <devintr+0x54>
    80005a68:	01813083          	ld	ra,24(sp)
    80005a6c:	01013403          	ld	s0,16(sp)
    80005a70:	00813483          	ld	s1,8(sp)
    80005a74:	02010113          	addi	sp,sp,32
    80005a78:	00008067          	ret
    80005a7c:	00000097          	auipc	ra,0x0
    80005a80:	c8c080e7          	jalr	-884(ra) # 80005708 <cpuid>
    80005a84:	06050663          	beqz	a0,80005af0 <devintr+0xc8>
    80005a88:	144027f3          	csrr	a5,sip
    80005a8c:	ffd7f793          	andi	a5,a5,-3
    80005a90:	14479073          	csrw	sip,a5
    80005a94:	01813083          	ld	ra,24(sp)
    80005a98:	01013403          	ld	s0,16(sp)
    80005a9c:	00813483          	ld	s1,8(sp)
    80005aa0:	00200513          	li	a0,2
    80005aa4:	02010113          	addi	sp,sp,32
    80005aa8:	00008067          	ret
    80005aac:	00000097          	auipc	ra,0x0
    80005ab0:	258080e7          	jalr	600(ra) # 80005d04 <plic_claim>
    80005ab4:	00a00793          	li	a5,10
    80005ab8:	00050493          	mv	s1,a0
    80005abc:	06f50663          	beq	a0,a5,80005b28 <devintr+0x100>
    80005ac0:	00100513          	li	a0,1
    80005ac4:	fa0482e3          	beqz	s1,80005a68 <devintr+0x40>
    80005ac8:	00048593          	mv	a1,s1
    80005acc:	00003517          	auipc	a0,0x3
    80005ad0:	b9c50513          	addi	a0,a0,-1124 # 80008668 <CONSOLE_STATUS+0x658>
    80005ad4:	00000097          	auipc	ra,0x0
    80005ad8:	674080e7          	jalr	1652(ra) # 80006148 <__printf>
    80005adc:	00048513          	mv	a0,s1
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	25c080e7          	jalr	604(ra) # 80005d3c <plic_complete>
    80005ae8:	00100513          	li	a0,1
    80005aec:	f7dff06f          	j	80005a68 <devintr+0x40>
    80005af0:	0000c517          	auipc	a0,0xc
    80005af4:	06050513          	addi	a0,a0,96 # 80011b50 <tickslock>
    80005af8:	00001097          	auipc	ra,0x1
    80005afc:	324080e7          	jalr	804(ra) # 80006e1c <acquire>
    80005b00:	00003717          	auipc	a4,0x3
    80005b04:	e9470713          	addi	a4,a4,-364 # 80008994 <ticks>
    80005b08:	00072783          	lw	a5,0(a4)
    80005b0c:	0000c517          	auipc	a0,0xc
    80005b10:	04450513          	addi	a0,a0,68 # 80011b50 <tickslock>
    80005b14:	0017879b          	addiw	a5,a5,1
    80005b18:	00f72023          	sw	a5,0(a4)
    80005b1c:	00001097          	auipc	ra,0x1
    80005b20:	3cc080e7          	jalr	972(ra) # 80006ee8 <release>
    80005b24:	f65ff06f          	j	80005a88 <devintr+0x60>
    80005b28:	00001097          	auipc	ra,0x1
    80005b2c:	f28080e7          	jalr	-216(ra) # 80006a50 <uartintr>
    80005b30:	fadff06f          	j	80005adc <devintr+0xb4>
	...

0000000080005b40 <kernelvec>:
    80005b40:	f0010113          	addi	sp,sp,-256
    80005b44:	00113023          	sd	ra,0(sp)
    80005b48:	00213423          	sd	sp,8(sp)
    80005b4c:	00313823          	sd	gp,16(sp)
    80005b50:	00413c23          	sd	tp,24(sp)
    80005b54:	02513023          	sd	t0,32(sp)
    80005b58:	02613423          	sd	t1,40(sp)
    80005b5c:	02713823          	sd	t2,48(sp)
    80005b60:	02813c23          	sd	s0,56(sp)
    80005b64:	04913023          	sd	s1,64(sp)
    80005b68:	04a13423          	sd	a0,72(sp)
    80005b6c:	04b13823          	sd	a1,80(sp)
    80005b70:	04c13c23          	sd	a2,88(sp)
    80005b74:	06d13023          	sd	a3,96(sp)
    80005b78:	06e13423          	sd	a4,104(sp)
    80005b7c:	06f13823          	sd	a5,112(sp)
    80005b80:	07013c23          	sd	a6,120(sp)
    80005b84:	09113023          	sd	a7,128(sp)
    80005b88:	09213423          	sd	s2,136(sp)
    80005b8c:	09313823          	sd	s3,144(sp)
    80005b90:	09413c23          	sd	s4,152(sp)
    80005b94:	0b513023          	sd	s5,160(sp)
    80005b98:	0b613423          	sd	s6,168(sp)
    80005b9c:	0b713823          	sd	s7,176(sp)
    80005ba0:	0b813c23          	sd	s8,184(sp)
    80005ba4:	0d913023          	sd	s9,192(sp)
    80005ba8:	0da13423          	sd	s10,200(sp)
    80005bac:	0db13823          	sd	s11,208(sp)
    80005bb0:	0dc13c23          	sd	t3,216(sp)
    80005bb4:	0fd13023          	sd	t4,224(sp)
    80005bb8:	0fe13423          	sd	t5,232(sp)
    80005bbc:	0ff13823          	sd	t6,240(sp)
    80005bc0:	cc9ff0ef          	jal	ra,80005888 <kerneltrap>
    80005bc4:	00013083          	ld	ra,0(sp)
    80005bc8:	00813103          	ld	sp,8(sp)
    80005bcc:	01013183          	ld	gp,16(sp)
    80005bd0:	02013283          	ld	t0,32(sp)
    80005bd4:	02813303          	ld	t1,40(sp)
    80005bd8:	03013383          	ld	t2,48(sp)
    80005bdc:	03813403          	ld	s0,56(sp)
    80005be0:	04013483          	ld	s1,64(sp)
    80005be4:	04813503          	ld	a0,72(sp)
    80005be8:	05013583          	ld	a1,80(sp)
    80005bec:	05813603          	ld	a2,88(sp)
    80005bf0:	06013683          	ld	a3,96(sp)
    80005bf4:	06813703          	ld	a4,104(sp)
    80005bf8:	07013783          	ld	a5,112(sp)
    80005bfc:	07813803          	ld	a6,120(sp)
    80005c00:	08013883          	ld	a7,128(sp)
    80005c04:	08813903          	ld	s2,136(sp)
    80005c08:	09013983          	ld	s3,144(sp)
    80005c0c:	09813a03          	ld	s4,152(sp)
    80005c10:	0a013a83          	ld	s5,160(sp)
    80005c14:	0a813b03          	ld	s6,168(sp)
    80005c18:	0b013b83          	ld	s7,176(sp)
    80005c1c:	0b813c03          	ld	s8,184(sp)
    80005c20:	0c013c83          	ld	s9,192(sp)
    80005c24:	0c813d03          	ld	s10,200(sp)
    80005c28:	0d013d83          	ld	s11,208(sp)
    80005c2c:	0d813e03          	ld	t3,216(sp)
    80005c30:	0e013e83          	ld	t4,224(sp)
    80005c34:	0e813f03          	ld	t5,232(sp)
    80005c38:	0f013f83          	ld	t6,240(sp)
    80005c3c:	10010113          	addi	sp,sp,256
    80005c40:	10200073          	sret
    80005c44:	00000013          	nop
    80005c48:	00000013          	nop
    80005c4c:	00000013          	nop

0000000080005c50 <timervec>:
    80005c50:	34051573          	csrrw	a0,mscratch,a0
    80005c54:	00b53023          	sd	a1,0(a0)
    80005c58:	00c53423          	sd	a2,8(a0)
    80005c5c:	00d53823          	sd	a3,16(a0)
    80005c60:	01853583          	ld	a1,24(a0)
    80005c64:	02053603          	ld	a2,32(a0)
    80005c68:	0005b683          	ld	a3,0(a1)
    80005c6c:	00c686b3          	add	a3,a3,a2
    80005c70:	00d5b023          	sd	a3,0(a1)
    80005c74:	00200593          	li	a1,2
    80005c78:	14459073          	csrw	sip,a1
    80005c7c:	01053683          	ld	a3,16(a0)
    80005c80:	00853603          	ld	a2,8(a0)
    80005c84:	00053583          	ld	a1,0(a0)
    80005c88:	34051573          	csrrw	a0,mscratch,a0
    80005c8c:	30200073          	mret

0000000080005c90 <plicinit>:
    80005c90:	ff010113          	addi	sp,sp,-16
    80005c94:	00813423          	sd	s0,8(sp)
    80005c98:	01010413          	addi	s0,sp,16
    80005c9c:	00813403          	ld	s0,8(sp)
    80005ca0:	0c0007b7          	lui	a5,0xc000
    80005ca4:	00100713          	li	a4,1
    80005ca8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005cac:	00e7a223          	sw	a4,4(a5)
    80005cb0:	01010113          	addi	sp,sp,16
    80005cb4:	00008067          	ret

0000000080005cb8 <plicinithart>:
    80005cb8:	ff010113          	addi	sp,sp,-16
    80005cbc:	00813023          	sd	s0,0(sp)
    80005cc0:	00113423          	sd	ra,8(sp)
    80005cc4:	01010413          	addi	s0,sp,16
    80005cc8:	00000097          	auipc	ra,0x0
    80005ccc:	a40080e7          	jalr	-1472(ra) # 80005708 <cpuid>
    80005cd0:	0085171b          	slliw	a4,a0,0x8
    80005cd4:	0c0027b7          	lui	a5,0xc002
    80005cd8:	00e787b3          	add	a5,a5,a4
    80005cdc:	40200713          	li	a4,1026
    80005ce0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005ce4:	00813083          	ld	ra,8(sp)
    80005ce8:	00013403          	ld	s0,0(sp)
    80005cec:	00d5151b          	slliw	a0,a0,0xd
    80005cf0:	0c2017b7          	lui	a5,0xc201
    80005cf4:	00a78533          	add	a0,a5,a0
    80005cf8:	00052023          	sw	zero,0(a0)
    80005cfc:	01010113          	addi	sp,sp,16
    80005d00:	00008067          	ret

0000000080005d04 <plic_claim>:
    80005d04:	ff010113          	addi	sp,sp,-16
    80005d08:	00813023          	sd	s0,0(sp)
    80005d0c:	00113423          	sd	ra,8(sp)
    80005d10:	01010413          	addi	s0,sp,16
    80005d14:	00000097          	auipc	ra,0x0
    80005d18:	9f4080e7          	jalr	-1548(ra) # 80005708 <cpuid>
    80005d1c:	00813083          	ld	ra,8(sp)
    80005d20:	00013403          	ld	s0,0(sp)
    80005d24:	00d5151b          	slliw	a0,a0,0xd
    80005d28:	0c2017b7          	lui	a5,0xc201
    80005d2c:	00a78533          	add	a0,a5,a0
    80005d30:	00452503          	lw	a0,4(a0)
    80005d34:	01010113          	addi	sp,sp,16
    80005d38:	00008067          	ret

0000000080005d3c <plic_complete>:
    80005d3c:	fe010113          	addi	sp,sp,-32
    80005d40:	00813823          	sd	s0,16(sp)
    80005d44:	00913423          	sd	s1,8(sp)
    80005d48:	00113c23          	sd	ra,24(sp)
    80005d4c:	02010413          	addi	s0,sp,32
    80005d50:	00050493          	mv	s1,a0
    80005d54:	00000097          	auipc	ra,0x0
    80005d58:	9b4080e7          	jalr	-1612(ra) # 80005708 <cpuid>
    80005d5c:	01813083          	ld	ra,24(sp)
    80005d60:	01013403          	ld	s0,16(sp)
    80005d64:	00d5179b          	slliw	a5,a0,0xd
    80005d68:	0c201737          	lui	a4,0xc201
    80005d6c:	00f707b3          	add	a5,a4,a5
    80005d70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005d74:	00813483          	ld	s1,8(sp)
    80005d78:	02010113          	addi	sp,sp,32
    80005d7c:	00008067          	ret

0000000080005d80 <consolewrite>:
    80005d80:	fb010113          	addi	sp,sp,-80
    80005d84:	04813023          	sd	s0,64(sp)
    80005d88:	04113423          	sd	ra,72(sp)
    80005d8c:	02913c23          	sd	s1,56(sp)
    80005d90:	03213823          	sd	s2,48(sp)
    80005d94:	03313423          	sd	s3,40(sp)
    80005d98:	03413023          	sd	s4,32(sp)
    80005d9c:	01513c23          	sd	s5,24(sp)
    80005da0:	05010413          	addi	s0,sp,80
    80005da4:	06c05c63          	blez	a2,80005e1c <consolewrite+0x9c>
    80005da8:	00060993          	mv	s3,a2
    80005dac:	00050a13          	mv	s4,a0
    80005db0:	00058493          	mv	s1,a1
    80005db4:	00000913          	li	s2,0
    80005db8:	fff00a93          	li	s5,-1
    80005dbc:	01c0006f          	j	80005dd8 <consolewrite+0x58>
    80005dc0:	fbf44503          	lbu	a0,-65(s0)
    80005dc4:	0019091b          	addiw	s2,s2,1
    80005dc8:	00148493          	addi	s1,s1,1
    80005dcc:	00001097          	auipc	ra,0x1
    80005dd0:	a9c080e7          	jalr	-1380(ra) # 80006868 <uartputc>
    80005dd4:	03298063          	beq	s3,s2,80005df4 <consolewrite+0x74>
    80005dd8:	00048613          	mv	a2,s1
    80005ddc:	00100693          	li	a3,1
    80005de0:	000a0593          	mv	a1,s4
    80005de4:	fbf40513          	addi	a0,s0,-65
    80005de8:	00000097          	auipc	ra,0x0
    80005dec:	9d8080e7          	jalr	-1576(ra) # 800057c0 <either_copyin>
    80005df0:	fd5518e3          	bne	a0,s5,80005dc0 <consolewrite+0x40>
    80005df4:	04813083          	ld	ra,72(sp)
    80005df8:	04013403          	ld	s0,64(sp)
    80005dfc:	03813483          	ld	s1,56(sp)
    80005e00:	02813983          	ld	s3,40(sp)
    80005e04:	02013a03          	ld	s4,32(sp)
    80005e08:	01813a83          	ld	s5,24(sp)
    80005e0c:	00090513          	mv	a0,s2
    80005e10:	03013903          	ld	s2,48(sp)
    80005e14:	05010113          	addi	sp,sp,80
    80005e18:	00008067          	ret
    80005e1c:	00000913          	li	s2,0
    80005e20:	fd5ff06f          	j	80005df4 <consolewrite+0x74>

0000000080005e24 <consoleread>:
    80005e24:	f9010113          	addi	sp,sp,-112
    80005e28:	06813023          	sd	s0,96(sp)
    80005e2c:	04913c23          	sd	s1,88(sp)
    80005e30:	05213823          	sd	s2,80(sp)
    80005e34:	05313423          	sd	s3,72(sp)
    80005e38:	05413023          	sd	s4,64(sp)
    80005e3c:	03513c23          	sd	s5,56(sp)
    80005e40:	03613823          	sd	s6,48(sp)
    80005e44:	03713423          	sd	s7,40(sp)
    80005e48:	03813023          	sd	s8,32(sp)
    80005e4c:	06113423          	sd	ra,104(sp)
    80005e50:	01913c23          	sd	s9,24(sp)
    80005e54:	07010413          	addi	s0,sp,112
    80005e58:	00060b93          	mv	s7,a2
    80005e5c:	00050913          	mv	s2,a0
    80005e60:	00058c13          	mv	s8,a1
    80005e64:	00060b1b          	sext.w	s6,a2
    80005e68:	0000c497          	auipc	s1,0xc
    80005e6c:	d1048493          	addi	s1,s1,-752 # 80011b78 <cons>
    80005e70:	00400993          	li	s3,4
    80005e74:	fff00a13          	li	s4,-1
    80005e78:	00a00a93          	li	s5,10
    80005e7c:	05705e63          	blez	s7,80005ed8 <consoleread+0xb4>
    80005e80:	09c4a703          	lw	a4,156(s1)
    80005e84:	0984a783          	lw	a5,152(s1)
    80005e88:	0007071b          	sext.w	a4,a4
    80005e8c:	08e78463          	beq	a5,a4,80005f14 <consoleread+0xf0>
    80005e90:	07f7f713          	andi	a4,a5,127
    80005e94:	00e48733          	add	a4,s1,a4
    80005e98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005e9c:	0017869b          	addiw	a3,a5,1
    80005ea0:	08d4ac23          	sw	a3,152(s1)
    80005ea4:	00070c9b          	sext.w	s9,a4
    80005ea8:	0b370663          	beq	a4,s3,80005f54 <consoleread+0x130>
    80005eac:	00100693          	li	a3,1
    80005eb0:	f9f40613          	addi	a2,s0,-97
    80005eb4:	000c0593          	mv	a1,s8
    80005eb8:	00090513          	mv	a0,s2
    80005ebc:	f8e40fa3          	sb	a4,-97(s0)
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	8b4080e7          	jalr	-1868(ra) # 80005774 <either_copyout>
    80005ec8:	01450863          	beq	a0,s4,80005ed8 <consoleread+0xb4>
    80005ecc:	001c0c13          	addi	s8,s8,1
    80005ed0:	fffb8b9b          	addiw	s7,s7,-1
    80005ed4:	fb5c94e3          	bne	s9,s5,80005e7c <consoleread+0x58>
    80005ed8:	000b851b          	sext.w	a0,s7
    80005edc:	06813083          	ld	ra,104(sp)
    80005ee0:	06013403          	ld	s0,96(sp)
    80005ee4:	05813483          	ld	s1,88(sp)
    80005ee8:	05013903          	ld	s2,80(sp)
    80005eec:	04813983          	ld	s3,72(sp)
    80005ef0:	04013a03          	ld	s4,64(sp)
    80005ef4:	03813a83          	ld	s5,56(sp)
    80005ef8:	02813b83          	ld	s7,40(sp)
    80005efc:	02013c03          	ld	s8,32(sp)
    80005f00:	01813c83          	ld	s9,24(sp)
    80005f04:	40ab053b          	subw	a0,s6,a0
    80005f08:	03013b03          	ld	s6,48(sp)
    80005f0c:	07010113          	addi	sp,sp,112
    80005f10:	00008067          	ret
    80005f14:	00001097          	auipc	ra,0x1
    80005f18:	1d8080e7          	jalr	472(ra) # 800070ec <push_on>
    80005f1c:	0984a703          	lw	a4,152(s1)
    80005f20:	09c4a783          	lw	a5,156(s1)
    80005f24:	0007879b          	sext.w	a5,a5
    80005f28:	fef70ce3          	beq	a4,a5,80005f20 <consoleread+0xfc>
    80005f2c:	00001097          	auipc	ra,0x1
    80005f30:	234080e7          	jalr	564(ra) # 80007160 <pop_on>
    80005f34:	0984a783          	lw	a5,152(s1)
    80005f38:	07f7f713          	andi	a4,a5,127
    80005f3c:	00e48733          	add	a4,s1,a4
    80005f40:	01874703          	lbu	a4,24(a4)
    80005f44:	0017869b          	addiw	a3,a5,1
    80005f48:	08d4ac23          	sw	a3,152(s1)
    80005f4c:	00070c9b          	sext.w	s9,a4
    80005f50:	f5371ee3          	bne	a4,s3,80005eac <consoleread+0x88>
    80005f54:	000b851b          	sext.w	a0,s7
    80005f58:	f96bf2e3          	bgeu	s7,s6,80005edc <consoleread+0xb8>
    80005f5c:	08f4ac23          	sw	a5,152(s1)
    80005f60:	f7dff06f          	j	80005edc <consoleread+0xb8>

0000000080005f64 <consputc>:
    80005f64:	10000793          	li	a5,256
    80005f68:	00f50663          	beq	a0,a5,80005f74 <consputc+0x10>
    80005f6c:	00001317          	auipc	t1,0x1
    80005f70:	9f430067          	jr	-1548(t1) # 80006960 <uartputc_sync>
    80005f74:	ff010113          	addi	sp,sp,-16
    80005f78:	00113423          	sd	ra,8(sp)
    80005f7c:	00813023          	sd	s0,0(sp)
    80005f80:	01010413          	addi	s0,sp,16
    80005f84:	00800513          	li	a0,8
    80005f88:	00001097          	auipc	ra,0x1
    80005f8c:	9d8080e7          	jalr	-1576(ra) # 80006960 <uartputc_sync>
    80005f90:	02000513          	li	a0,32
    80005f94:	00001097          	auipc	ra,0x1
    80005f98:	9cc080e7          	jalr	-1588(ra) # 80006960 <uartputc_sync>
    80005f9c:	00013403          	ld	s0,0(sp)
    80005fa0:	00813083          	ld	ra,8(sp)
    80005fa4:	00800513          	li	a0,8
    80005fa8:	01010113          	addi	sp,sp,16
    80005fac:	00001317          	auipc	t1,0x1
    80005fb0:	9b430067          	jr	-1612(t1) # 80006960 <uartputc_sync>

0000000080005fb4 <consoleintr>:
    80005fb4:	fe010113          	addi	sp,sp,-32
    80005fb8:	00813823          	sd	s0,16(sp)
    80005fbc:	00913423          	sd	s1,8(sp)
    80005fc0:	01213023          	sd	s2,0(sp)
    80005fc4:	00113c23          	sd	ra,24(sp)
    80005fc8:	02010413          	addi	s0,sp,32
    80005fcc:	0000c917          	auipc	s2,0xc
    80005fd0:	bac90913          	addi	s2,s2,-1108 # 80011b78 <cons>
    80005fd4:	00050493          	mv	s1,a0
    80005fd8:	00090513          	mv	a0,s2
    80005fdc:	00001097          	auipc	ra,0x1
    80005fe0:	e40080e7          	jalr	-448(ra) # 80006e1c <acquire>
    80005fe4:	02048c63          	beqz	s1,8000601c <consoleintr+0x68>
    80005fe8:	0a092783          	lw	a5,160(s2)
    80005fec:	09892703          	lw	a4,152(s2)
    80005ff0:	07f00693          	li	a3,127
    80005ff4:	40e7873b          	subw	a4,a5,a4
    80005ff8:	02e6e263          	bltu	a3,a4,8000601c <consoleintr+0x68>
    80005ffc:	00d00713          	li	a4,13
    80006000:	04e48063          	beq	s1,a4,80006040 <consoleintr+0x8c>
    80006004:	07f7f713          	andi	a4,a5,127
    80006008:	00e90733          	add	a4,s2,a4
    8000600c:	0017879b          	addiw	a5,a5,1
    80006010:	0af92023          	sw	a5,160(s2)
    80006014:	00970c23          	sb	s1,24(a4)
    80006018:	08f92e23          	sw	a5,156(s2)
    8000601c:	01013403          	ld	s0,16(sp)
    80006020:	01813083          	ld	ra,24(sp)
    80006024:	00813483          	ld	s1,8(sp)
    80006028:	00013903          	ld	s2,0(sp)
    8000602c:	0000c517          	auipc	a0,0xc
    80006030:	b4c50513          	addi	a0,a0,-1204 # 80011b78 <cons>
    80006034:	02010113          	addi	sp,sp,32
    80006038:	00001317          	auipc	t1,0x1
    8000603c:	eb030067          	jr	-336(t1) # 80006ee8 <release>
    80006040:	00a00493          	li	s1,10
    80006044:	fc1ff06f          	j	80006004 <consoleintr+0x50>

0000000080006048 <consoleinit>:
    80006048:	fe010113          	addi	sp,sp,-32
    8000604c:	00113c23          	sd	ra,24(sp)
    80006050:	00813823          	sd	s0,16(sp)
    80006054:	00913423          	sd	s1,8(sp)
    80006058:	02010413          	addi	s0,sp,32
    8000605c:	0000c497          	auipc	s1,0xc
    80006060:	b1c48493          	addi	s1,s1,-1252 # 80011b78 <cons>
    80006064:	00048513          	mv	a0,s1
    80006068:	00002597          	auipc	a1,0x2
    8000606c:	65858593          	addi	a1,a1,1624 # 800086c0 <CONSOLE_STATUS+0x6b0>
    80006070:	00001097          	auipc	ra,0x1
    80006074:	d88080e7          	jalr	-632(ra) # 80006df8 <initlock>
    80006078:	00000097          	auipc	ra,0x0
    8000607c:	7ac080e7          	jalr	1964(ra) # 80006824 <uartinit>
    80006080:	01813083          	ld	ra,24(sp)
    80006084:	01013403          	ld	s0,16(sp)
    80006088:	00000797          	auipc	a5,0x0
    8000608c:	d9c78793          	addi	a5,a5,-612 # 80005e24 <consoleread>
    80006090:	0af4bc23          	sd	a5,184(s1)
    80006094:	00000797          	auipc	a5,0x0
    80006098:	cec78793          	addi	a5,a5,-788 # 80005d80 <consolewrite>
    8000609c:	0cf4b023          	sd	a5,192(s1)
    800060a0:	00813483          	ld	s1,8(sp)
    800060a4:	02010113          	addi	sp,sp,32
    800060a8:	00008067          	ret

00000000800060ac <console_read>:
    800060ac:	ff010113          	addi	sp,sp,-16
    800060b0:	00813423          	sd	s0,8(sp)
    800060b4:	01010413          	addi	s0,sp,16
    800060b8:	00813403          	ld	s0,8(sp)
    800060bc:	0000c317          	auipc	t1,0xc
    800060c0:	b7433303          	ld	t1,-1164(t1) # 80011c30 <devsw+0x10>
    800060c4:	01010113          	addi	sp,sp,16
    800060c8:	00030067          	jr	t1

00000000800060cc <console_write>:
    800060cc:	ff010113          	addi	sp,sp,-16
    800060d0:	00813423          	sd	s0,8(sp)
    800060d4:	01010413          	addi	s0,sp,16
    800060d8:	00813403          	ld	s0,8(sp)
    800060dc:	0000c317          	auipc	t1,0xc
    800060e0:	b5c33303          	ld	t1,-1188(t1) # 80011c38 <devsw+0x18>
    800060e4:	01010113          	addi	sp,sp,16
    800060e8:	00030067          	jr	t1

00000000800060ec <panic>:
    800060ec:	fe010113          	addi	sp,sp,-32
    800060f0:	00113c23          	sd	ra,24(sp)
    800060f4:	00813823          	sd	s0,16(sp)
    800060f8:	00913423          	sd	s1,8(sp)
    800060fc:	02010413          	addi	s0,sp,32
    80006100:	00050493          	mv	s1,a0
    80006104:	00002517          	auipc	a0,0x2
    80006108:	5c450513          	addi	a0,a0,1476 # 800086c8 <CONSOLE_STATUS+0x6b8>
    8000610c:	0000c797          	auipc	a5,0xc
    80006110:	bc07a623          	sw	zero,-1076(a5) # 80011cd8 <pr+0x18>
    80006114:	00000097          	auipc	ra,0x0
    80006118:	034080e7          	jalr	52(ra) # 80006148 <__printf>
    8000611c:	00048513          	mv	a0,s1
    80006120:	00000097          	auipc	ra,0x0
    80006124:	028080e7          	jalr	40(ra) # 80006148 <__printf>
    80006128:	00002517          	auipc	a0,0x2
    8000612c:	05850513          	addi	a0,a0,88 # 80008180 <CONSOLE_STATUS+0x170>
    80006130:	00000097          	auipc	ra,0x0
    80006134:	018080e7          	jalr	24(ra) # 80006148 <__printf>
    80006138:	00100793          	li	a5,1
    8000613c:	00003717          	auipc	a4,0x3
    80006140:	84f72e23          	sw	a5,-1956(a4) # 80008998 <panicked>
    80006144:	0000006f          	j	80006144 <panic+0x58>

0000000080006148 <__printf>:
    80006148:	f3010113          	addi	sp,sp,-208
    8000614c:	08813023          	sd	s0,128(sp)
    80006150:	07313423          	sd	s3,104(sp)
    80006154:	09010413          	addi	s0,sp,144
    80006158:	05813023          	sd	s8,64(sp)
    8000615c:	08113423          	sd	ra,136(sp)
    80006160:	06913c23          	sd	s1,120(sp)
    80006164:	07213823          	sd	s2,112(sp)
    80006168:	07413023          	sd	s4,96(sp)
    8000616c:	05513c23          	sd	s5,88(sp)
    80006170:	05613823          	sd	s6,80(sp)
    80006174:	05713423          	sd	s7,72(sp)
    80006178:	03913c23          	sd	s9,56(sp)
    8000617c:	03a13823          	sd	s10,48(sp)
    80006180:	03b13423          	sd	s11,40(sp)
    80006184:	0000c317          	auipc	t1,0xc
    80006188:	b3c30313          	addi	t1,t1,-1220 # 80011cc0 <pr>
    8000618c:	01832c03          	lw	s8,24(t1)
    80006190:	00b43423          	sd	a1,8(s0)
    80006194:	00c43823          	sd	a2,16(s0)
    80006198:	00d43c23          	sd	a3,24(s0)
    8000619c:	02e43023          	sd	a4,32(s0)
    800061a0:	02f43423          	sd	a5,40(s0)
    800061a4:	03043823          	sd	a6,48(s0)
    800061a8:	03143c23          	sd	a7,56(s0)
    800061ac:	00050993          	mv	s3,a0
    800061b0:	4a0c1663          	bnez	s8,8000665c <__printf+0x514>
    800061b4:	60098c63          	beqz	s3,800067cc <__printf+0x684>
    800061b8:	0009c503          	lbu	a0,0(s3)
    800061bc:	00840793          	addi	a5,s0,8
    800061c0:	f6f43c23          	sd	a5,-136(s0)
    800061c4:	00000493          	li	s1,0
    800061c8:	22050063          	beqz	a0,800063e8 <__printf+0x2a0>
    800061cc:	00002a37          	lui	s4,0x2
    800061d0:	00018ab7          	lui	s5,0x18
    800061d4:	000f4b37          	lui	s6,0xf4
    800061d8:	00989bb7          	lui	s7,0x989
    800061dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800061e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800061e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800061e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800061ec:	00148c9b          	addiw	s9,s1,1
    800061f0:	02500793          	li	a5,37
    800061f4:	01998933          	add	s2,s3,s9
    800061f8:	38f51263          	bne	a0,a5,8000657c <__printf+0x434>
    800061fc:	00094783          	lbu	a5,0(s2)
    80006200:	00078c9b          	sext.w	s9,a5
    80006204:	1e078263          	beqz	a5,800063e8 <__printf+0x2a0>
    80006208:	0024849b          	addiw	s1,s1,2
    8000620c:	07000713          	li	a4,112
    80006210:	00998933          	add	s2,s3,s1
    80006214:	38e78a63          	beq	a5,a4,800065a8 <__printf+0x460>
    80006218:	20f76863          	bltu	a4,a5,80006428 <__printf+0x2e0>
    8000621c:	42a78863          	beq	a5,a0,8000664c <__printf+0x504>
    80006220:	06400713          	li	a4,100
    80006224:	40e79663          	bne	a5,a4,80006630 <__printf+0x4e8>
    80006228:	f7843783          	ld	a5,-136(s0)
    8000622c:	0007a603          	lw	a2,0(a5)
    80006230:	00878793          	addi	a5,a5,8
    80006234:	f6f43c23          	sd	a5,-136(s0)
    80006238:	42064a63          	bltz	a2,8000666c <__printf+0x524>
    8000623c:	00a00713          	li	a4,10
    80006240:	02e677bb          	remuw	a5,a2,a4
    80006244:	00002d97          	auipc	s11,0x2
    80006248:	4acd8d93          	addi	s11,s11,1196 # 800086f0 <digits>
    8000624c:	00900593          	li	a1,9
    80006250:	0006051b          	sext.w	a0,a2
    80006254:	00000c93          	li	s9,0
    80006258:	02079793          	slli	a5,a5,0x20
    8000625c:	0207d793          	srli	a5,a5,0x20
    80006260:	00fd87b3          	add	a5,s11,a5
    80006264:	0007c783          	lbu	a5,0(a5)
    80006268:	02e656bb          	divuw	a3,a2,a4
    8000626c:	f8f40023          	sb	a5,-128(s0)
    80006270:	14c5d863          	bge	a1,a2,800063c0 <__printf+0x278>
    80006274:	06300593          	li	a1,99
    80006278:	00100c93          	li	s9,1
    8000627c:	02e6f7bb          	remuw	a5,a3,a4
    80006280:	02079793          	slli	a5,a5,0x20
    80006284:	0207d793          	srli	a5,a5,0x20
    80006288:	00fd87b3          	add	a5,s11,a5
    8000628c:	0007c783          	lbu	a5,0(a5)
    80006290:	02e6d73b          	divuw	a4,a3,a4
    80006294:	f8f400a3          	sb	a5,-127(s0)
    80006298:	12a5f463          	bgeu	a1,a0,800063c0 <__printf+0x278>
    8000629c:	00a00693          	li	a3,10
    800062a0:	00900593          	li	a1,9
    800062a4:	02d777bb          	remuw	a5,a4,a3
    800062a8:	02079793          	slli	a5,a5,0x20
    800062ac:	0207d793          	srli	a5,a5,0x20
    800062b0:	00fd87b3          	add	a5,s11,a5
    800062b4:	0007c503          	lbu	a0,0(a5)
    800062b8:	02d757bb          	divuw	a5,a4,a3
    800062bc:	f8a40123          	sb	a0,-126(s0)
    800062c0:	48e5f263          	bgeu	a1,a4,80006744 <__printf+0x5fc>
    800062c4:	06300513          	li	a0,99
    800062c8:	02d7f5bb          	remuw	a1,a5,a3
    800062cc:	02059593          	slli	a1,a1,0x20
    800062d0:	0205d593          	srli	a1,a1,0x20
    800062d4:	00bd85b3          	add	a1,s11,a1
    800062d8:	0005c583          	lbu	a1,0(a1)
    800062dc:	02d7d7bb          	divuw	a5,a5,a3
    800062e0:	f8b401a3          	sb	a1,-125(s0)
    800062e4:	48e57263          	bgeu	a0,a4,80006768 <__printf+0x620>
    800062e8:	3e700513          	li	a0,999
    800062ec:	02d7f5bb          	remuw	a1,a5,a3
    800062f0:	02059593          	slli	a1,a1,0x20
    800062f4:	0205d593          	srli	a1,a1,0x20
    800062f8:	00bd85b3          	add	a1,s11,a1
    800062fc:	0005c583          	lbu	a1,0(a1)
    80006300:	02d7d7bb          	divuw	a5,a5,a3
    80006304:	f8b40223          	sb	a1,-124(s0)
    80006308:	46e57663          	bgeu	a0,a4,80006774 <__printf+0x62c>
    8000630c:	02d7f5bb          	remuw	a1,a5,a3
    80006310:	02059593          	slli	a1,a1,0x20
    80006314:	0205d593          	srli	a1,a1,0x20
    80006318:	00bd85b3          	add	a1,s11,a1
    8000631c:	0005c583          	lbu	a1,0(a1)
    80006320:	02d7d7bb          	divuw	a5,a5,a3
    80006324:	f8b402a3          	sb	a1,-123(s0)
    80006328:	46ea7863          	bgeu	s4,a4,80006798 <__printf+0x650>
    8000632c:	02d7f5bb          	remuw	a1,a5,a3
    80006330:	02059593          	slli	a1,a1,0x20
    80006334:	0205d593          	srli	a1,a1,0x20
    80006338:	00bd85b3          	add	a1,s11,a1
    8000633c:	0005c583          	lbu	a1,0(a1)
    80006340:	02d7d7bb          	divuw	a5,a5,a3
    80006344:	f8b40323          	sb	a1,-122(s0)
    80006348:	3eeaf863          	bgeu	s5,a4,80006738 <__printf+0x5f0>
    8000634c:	02d7f5bb          	remuw	a1,a5,a3
    80006350:	02059593          	slli	a1,a1,0x20
    80006354:	0205d593          	srli	a1,a1,0x20
    80006358:	00bd85b3          	add	a1,s11,a1
    8000635c:	0005c583          	lbu	a1,0(a1)
    80006360:	02d7d7bb          	divuw	a5,a5,a3
    80006364:	f8b403a3          	sb	a1,-121(s0)
    80006368:	42eb7e63          	bgeu	s6,a4,800067a4 <__printf+0x65c>
    8000636c:	02d7f5bb          	remuw	a1,a5,a3
    80006370:	02059593          	slli	a1,a1,0x20
    80006374:	0205d593          	srli	a1,a1,0x20
    80006378:	00bd85b3          	add	a1,s11,a1
    8000637c:	0005c583          	lbu	a1,0(a1)
    80006380:	02d7d7bb          	divuw	a5,a5,a3
    80006384:	f8b40423          	sb	a1,-120(s0)
    80006388:	42ebfc63          	bgeu	s7,a4,800067c0 <__printf+0x678>
    8000638c:	02079793          	slli	a5,a5,0x20
    80006390:	0207d793          	srli	a5,a5,0x20
    80006394:	00fd8db3          	add	s11,s11,a5
    80006398:	000dc703          	lbu	a4,0(s11)
    8000639c:	00a00793          	li	a5,10
    800063a0:	00900c93          	li	s9,9
    800063a4:	f8e404a3          	sb	a4,-119(s0)
    800063a8:	00065c63          	bgez	a2,800063c0 <__printf+0x278>
    800063ac:	f9040713          	addi	a4,s0,-112
    800063b0:	00f70733          	add	a4,a4,a5
    800063b4:	02d00693          	li	a3,45
    800063b8:	fed70823          	sb	a3,-16(a4)
    800063bc:	00078c93          	mv	s9,a5
    800063c0:	f8040793          	addi	a5,s0,-128
    800063c4:	01978cb3          	add	s9,a5,s9
    800063c8:	f7f40d13          	addi	s10,s0,-129
    800063cc:	000cc503          	lbu	a0,0(s9)
    800063d0:	fffc8c93          	addi	s9,s9,-1
    800063d4:	00000097          	auipc	ra,0x0
    800063d8:	b90080e7          	jalr	-1136(ra) # 80005f64 <consputc>
    800063dc:	ffac98e3          	bne	s9,s10,800063cc <__printf+0x284>
    800063e0:	00094503          	lbu	a0,0(s2)
    800063e4:	e00514e3          	bnez	a0,800061ec <__printf+0xa4>
    800063e8:	1a0c1663          	bnez	s8,80006594 <__printf+0x44c>
    800063ec:	08813083          	ld	ra,136(sp)
    800063f0:	08013403          	ld	s0,128(sp)
    800063f4:	07813483          	ld	s1,120(sp)
    800063f8:	07013903          	ld	s2,112(sp)
    800063fc:	06813983          	ld	s3,104(sp)
    80006400:	06013a03          	ld	s4,96(sp)
    80006404:	05813a83          	ld	s5,88(sp)
    80006408:	05013b03          	ld	s6,80(sp)
    8000640c:	04813b83          	ld	s7,72(sp)
    80006410:	04013c03          	ld	s8,64(sp)
    80006414:	03813c83          	ld	s9,56(sp)
    80006418:	03013d03          	ld	s10,48(sp)
    8000641c:	02813d83          	ld	s11,40(sp)
    80006420:	0d010113          	addi	sp,sp,208
    80006424:	00008067          	ret
    80006428:	07300713          	li	a4,115
    8000642c:	1ce78a63          	beq	a5,a4,80006600 <__printf+0x4b8>
    80006430:	07800713          	li	a4,120
    80006434:	1ee79e63          	bne	a5,a4,80006630 <__printf+0x4e8>
    80006438:	f7843783          	ld	a5,-136(s0)
    8000643c:	0007a703          	lw	a4,0(a5)
    80006440:	00878793          	addi	a5,a5,8
    80006444:	f6f43c23          	sd	a5,-136(s0)
    80006448:	28074263          	bltz	a4,800066cc <__printf+0x584>
    8000644c:	00002d97          	auipc	s11,0x2
    80006450:	2a4d8d93          	addi	s11,s11,676 # 800086f0 <digits>
    80006454:	00f77793          	andi	a5,a4,15
    80006458:	00fd87b3          	add	a5,s11,a5
    8000645c:	0007c683          	lbu	a3,0(a5)
    80006460:	00f00613          	li	a2,15
    80006464:	0007079b          	sext.w	a5,a4
    80006468:	f8d40023          	sb	a3,-128(s0)
    8000646c:	0047559b          	srliw	a1,a4,0x4
    80006470:	0047569b          	srliw	a3,a4,0x4
    80006474:	00000c93          	li	s9,0
    80006478:	0ee65063          	bge	a2,a4,80006558 <__printf+0x410>
    8000647c:	00f6f693          	andi	a3,a3,15
    80006480:	00dd86b3          	add	a3,s11,a3
    80006484:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006488:	0087d79b          	srliw	a5,a5,0x8
    8000648c:	00100c93          	li	s9,1
    80006490:	f8d400a3          	sb	a3,-127(s0)
    80006494:	0cb67263          	bgeu	a2,a1,80006558 <__printf+0x410>
    80006498:	00f7f693          	andi	a3,a5,15
    8000649c:	00dd86b3          	add	a3,s11,a3
    800064a0:	0006c583          	lbu	a1,0(a3)
    800064a4:	00f00613          	li	a2,15
    800064a8:	0047d69b          	srliw	a3,a5,0x4
    800064ac:	f8b40123          	sb	a1,-126(s0)
    800064b0:	0047d593          	srli	a1,a5,0x4
    800064b4:	28f67e63          	bgeu	a2,a5,80006750 <__printf+0x608>
    800064b8:	00f6f693          	andi	a3,a3,15
    800064bc:	00dd86b3          	add	a3,s11,a3
    800064c0:	0006c503          	lbu	a0,0(a3)
    800064c4:	0087d813          	srli	a6,a5,0x8
    800064c8:	0087d69b          	srliw	a3,a5,0x8
    800064cc:	f8a401a3          	sb	a0,-125(s0)
    800064d0:	28b67663          	bgeu	a2,a1,8000675c <__printf+0x614>
    800064d4:	00f6f693          	andi	a3,a3,15
    800064d8:	00dd86b3          	add	a3,s11,a3
    800064dc:	0006c583          	lbu	a1,0(a3)
    800064e0:	00c7d513          	srli	a0,a5,0xc
    800064e4:	00c7d69b          	srliw	a3,a5,0xc
    800064e8:	f8b40223          	sb	a1,-124(s0)
    800064ec:	29067a63          	bgeu	a2,a6,80006780 <__printf+0x638>
    800064f0:	00f6f693          	andi	a3,a3,15
    800064f4:	00dd86b3          	add	a3,s11,a3
    800064f8:	0006c583          	lbu	a1,0(a3)
    800064fc:	0107d813          	srli	a6,a5,0x10
    80006500:	0107d69b          	srliw	a3,a5,0x10
    80006504:	f8b402a3          	sb	a1,-123(s0)
    80006508:	28a67263          	bgeu	a2,a0,8000678c <__printf+0x644>
    8000650c:	00f6f693          	andi	a3,a3,15
    80006510:	00dd86b3          	add	a3,s11,a3
    80006514:	0006c683          	lbu	a3,0(a3)
    80006518:	0147d79b          	srliw	a5,a5,0x14
    8000651c:	f8d40323          	sb	a3,-122(s0)
    80006520:	21067663          	bgeu	a2,a6,8000672c <__printf+0x5e4>
    80006524:	02079793          	slli	a5,a5,0x20
    80006528:	0207d793          	srli	a5,a5,0x20
    8000652c:	00fd8db3          	add	s11,s11,a5
    80006530:	000dc683          	lbu	a3,0(s11)
    80006534:	00800793          	li	a5,8
    80006538:	00700c93          	li	s9,7
    8000653c:	f8d403a3          	sb	a3,-121(s0)
    80006540:	00075c63          	bgez	a4,80006558 <__printf+0x410>
    80006544:	f9040713          	addi	a4,s0,-112
    80006548:	00f70733          	add	a4,a4,a5
    8000654c:	02d00693          	li	a3,45
    80006550:	fed70823          	sb	a3,-16(a4)
    80006554:	00078c93          	mv	s9,a5
    80006558:	f8040793          	addi	a5,s0,-128
    8000655c:	01978cb3          	add	s9,a5,s9
    80006560:	f7f40d13          	addi	s10,s0,-129
    80006564:	000cc503          	lbu	a0,0(s9)
    80006568:	fffc8c93          	addi	s9,s9,-1
    8000656c:	00000097          	auipc	ra,0x0
    80006570:	9f8080e7          	jalr	-1544(ra) # 80005f64 <consputc>
    80006574:	ff9d18e3          	bne	s10,s9,80006564 <__printf+0x41c>
    80006578:	0100006f          	j	80006588 <__printf+0x440>
    8000657c:	00000097          	auipc	ra,0x0
    80006580:	9e8080e7          	jalr	-1560(ra) # 80005f64 <consputc>
    80006584:	000c8493          	mv	s1,s9
    80006588:	00094503          	lbu	a0,0(s2)
    8000658c:	c60510e3          	bnez	a0,800061ec <__printf+0xa4>
    80006590:	e40c0ee3          	beqz	s8,800063ec <__printf+0x2a4>
    80006594:	0000b517          	auipc	a0,0xb
    80006598:	72c50513          	addi	a0,a0,1836 # 80011cc0 <pr>
    8000659c:	00001097          	auipc	ra,0x1
    800065a0:	94c080e7          	jalr	-1716(ra) # 80006ee8 <release>
    800065a4:	e49ff06f          	j	800063ec <__printf+0x2a4>
    800065a8:	f7843783          	ld	a5,-136(s0)
    800065ac:	03000513          	li	a0,48
    800065b0:	01000d13          	li	s10,16
    800065b4:	00878713          	addi	a4,a5,8
    800065b8:	0007bc83          	ld	s9,0(a5)
    800065bc:	f6e43c23          	sd	a4,-136(s0)
    800065c0:	00000097          	auipc	ra,0x0
    800065c4:	9a4080e7          	jalr	-1628(ra) # 80005f64 <consputc>
    800065c8:	07800513          	li	a0,120
    800065cc:	00000097          	auipc	ra,0x0
    800065d0:	998080e7          	jalr	-1640(ra) # 80005f64 <consputc>
    800065d4:	00002d97          	auipc	s11,0x2
    800065d8:	11cd8d93          	addi	s11,s11,284 # 800086f0 <digits>
    800065dc:	03ccd793          	srli	a5,s9,0x3c
    800065e0:	00fd87b3          	add	a5,s11,a5
    800065e4:	0007c503          	lbu	a0,0(a5)
    800065e8:	fffd0d1b          	addiw	s10,s10,-1
    800065ec:	004c9c93          	slli	s9,s9,0x4
    800065f0:	00000097          	auipc	ra,0x0
    800065f4:	974080e7          	jalr	-1676(ra) # 80005f64 <consputc>
    800065f8:	fe0d12e3          	bnez	s10,800065dc <__printf+0x494>
    800065fc:	f8dff06f          	j	80006588 <__printf+0x440>
    80006600:	f7843783          	ld	a5,-136(s0)
    80006604:	0007bc83          	ld	s9,0(a5)
    80006608:	00878793          	addi	a5,a5,8
    8000660c:	f6f43c23          	sd	a5,-136(s0)
    80006610:	000c9a63          	bnez	s9,80006624 <__printf+0x4dc>
    80006614:	1080006f          	j	8000671c <__printf+0x5d4>
    80006618:	001c8c93          	addi	s9,s9,1
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	948080e7          	jalr	-1720(ra) # 80005f64 <consputc>
    80006624:	000cc503          	lbu	a0,0(s9)
    80006628:	fe0518e3          	bnez	a0,80006618 <__printf+0x4d0>
    8000662c:	f5dff06f          	j	80006588 <__printf+0x440>
    80006630:	02500513          	li	a0,37
    80006634:	00000097          	auipc	ra,0x0
    80006638:	930080e7          	jalr	-1744(ra) # 80005f64 <consputc>
    8000663c:	000c8513          	mv	a0,s9
    80006640:	00000097          	auipc	ra,0x0
    80006644:	924080e7          	jalr	-1756(ra) # 80005f64 <consputc>
    80006648:	f41ff06f          	j	80006588 <__printf+0x440>
    8000664c:	02500513          	li	a0,37
    80006650:	00000097          	auipc	ra,0x0
    80006654:	914080e7          	jalr	-1772(ra) # 80005f64 <consputc>
    80006658:	f31ff06f          	j	80006588 <__printf+0x440>
    8000665c:	00030513          	mv	a0,t1
    80006660:	00000097          	auipc	ra,0x0
    80006664:	7bc080e7          	jalr	1980(ra) # 80006e1c <acquire>
    80006668:	b4dff06f          	j	800061b4 <__printf+0x6c>
    8000666c:	40c0053b          	negw	a0,a2
    80006670:	00a00713          	li	a4,10
    80006674:	02e576bb          	remuw	a3,a0,a4
    80006678:	00002d97          	auipc	s11,0x2
    8000667c:	078d8d93          	addi	s11,s11,120 # 800086f0 <digits>
    80006680:	ff700593          	li	a1,-9
    80006684:	02069693          	slli	a3,a3,0x20
    80006688:	0206d693          	srli	a3,a3,0x20
    8000668c:	00dd86b3          	add	a3,s11,a3
    80006690:	0006c683          	lbu	a3,0(a3)
    80006694:	02e557bb          	divuw	a5,a0,a4
    80006698:	f8d40023          	sb	a3,-128(s0)
    8000669c:	10b65e63          	bge	a2,a1,800067b8 <__printf+0x670>
    800066a0:	06300593          	li	a1,99
    800066a4:	02e7f6bb          	remuw	a3,a5,a4
    800066a8:	02069693          	slli	a3,a3,0x20
    800066ac:	0206d693          	srli	a3,a3,0x20
    800066b0:	00dd86b3          	add	a3,s11,a3
    800066b4:	0006c683          	lbu	a3,0(a3)
    800066b8:	02e7d73b          	divuw	a4,a5,a4
    800066bc:	00200793          	li	a5,2
    800066c0:	f8d400a3          	sb	a3,-127(s0)
    800066c4:	bca5ece3          	bltu	a1,a0,8000629c <__printf+0x154>
    800066c8:	ce5ff06f          	j	800063ac <__printf+0x264>
    800066cc:	40e007bb          	negw	a5,a4
    800066d0:	00002d97          	auipc	s11,0x2
    800066d4:	020d8d93          	addi	s11,s11,32 # 800086f0 <digits>
    800066d8:	00f7f693          	andi	a3,a5,15
    800066dc:	00dd86b3          	add	a3,s11,a3
    800066e0:	0006c583          	lbu	a1,0(a3)
    800066e4:	ff100613          	li	a2,-15
    800066e8:	0047d69b          	srliw	a3,a5,0x4
    800066ec:	f8b40023          	sb	a1,-128(s0)
    800066f0:	0047d59b          	srliw	a1,a5,0x4
    800066f4:	0ac75e63          	bge	a4,a2,800067b0 <__printf+0x668>
    800066f8:	00f6f693          	andi	a3,a3,15
    800066fc:	00dd86b3          	add	a3,s11,a3
    80006700:	0006c603          	lbu	a2,0(a3)
    80006704:	00f00693          	li	a3,15
    80006708:	0087d79b          	srliw	a5,a5,0x8
    8000670c:	f8c400a3          	sb	a2,-127(s0)
    80006710:	d8b6e4e3          	bltu	a3,a1,80006498 <__printf+0x350>
    80006714:	00200793          	li	a5,2
    80006718:	e2dff06f          	j	80006544 <__printf+0x3fc>
    8000671c:	00002c97          	auipc	s9,0x2
    80006720:	fb4c8c93          	addi	s9,s9,-76 # 800086d0 <CONSOLE_STATUS+0x6c0>
    80006724:	02800513          	li	a0,40
    80006728:	ef1ff06f          	j	80006618 <__printf+0x4d0>
    8000672c:	00700793          	li	a5,7
    80006730:	00600c93          	li	s9,6
    80006734:	e0dff06f          	j	80006540 <__printf+0x3f8>
    80006738:	00700793          	li	a5,7
    8000673c:	00600c93          	li	s9,6
    80006740:	c69ff06f          	j	800063a8 <__printf+0x260>
    80006744:	00300793          	li	a5,3
    80006748:	00200c93          	li	s9,2
    8000674c:	c5dff06f          	j	800063a8 <__printf+0x260>
    80006750:	00300793          	li	a5,3
    80006754:	00200c93          	li	s9,2
    80006758:	de9ff06f          	j	80006540 <__printf+0x3f8>
    8000675c:	00400793          	li	a5,4
    80006760:	00300c93          	li	s9,3
    80006764:	dddff06f          	j	80006540 <__printf+0x3f8>
    80006768:	00400793          	li	a5,4
    8000676c:	00300c93          	li	s9,3
    80006770:	c39ff06f          	j	800063a8 <__printf+0x260>
    80006774:	00500793          	li	a5,5
    80006778:	00400c93          	li	s9,4
    8000677c:	c2dff06f          	j	800063a8 <__printf+0x260>
    80006780:	00500793          	li	a5,5
    80006784:	00400c93          	li	s9,4
    80006788:	db9ff06f          	j	80006540 <__printf+0x3f8>
    8000678c:	00600793          	li	a5,6
    80006790:	00500c93          	li	s9,5
    80006794:	dadff06f          	j	80006540 <__printf+0x3f8>
    80006798:	00600793          	li	a5,6
    8000679c:	00500c93          	li	s9,5
    800067a0:	c09ff06f          	j	800063a8 <__printf+0x260>
    800067a4:	00800793          	li	a5,8
    800067a8:	00700c93          	li	s9,7
    800067ac:	bfdff06f          	j	800063a8 <__printf+0x260>
    800067b0:	00100793          	li	a5,1
    800067b4:	d91ff06f          	j	80006544 <__printf+0x3fc>
    800067b8:	00100793          	li	a5,1
    800067bc:	bf1ff06f          	j	800063ac <__printf+0x264>
    800067c0:	00900793          	li	a5,9
    800067c4:	00800c93          	li	s9,8
    800067c8:	be1ff06f          	j	800063a8 <__printf+0x260>
    800067cc:	00002517          	auipc	a0,0x2
    800067d0:	f0c50513          	addi	a0,a0,-244 # 800086d8 <CONSOLE_STATUS+0x6c8>
    800067d4:	00000097          	auipc	ra,0x0
    800067d8:	918080e7          	jalr	-1768(ra) # 800060ec <panic>

00000000800067dc <printfinit>:
    800067dc:	fe010113          	addi	sp,sp,-32
    800067e0:	00813823          	sd	s0,16(sp)
    800067e4:	00913423          	sd	s1,8(sp)
    800067e8:	00113c23          	sd	ra,24(sp)
    800067ec:	02010413          	addi	s0,sp,32
    800067f0:	0000b497          	auipc	s1,0xb
    800067f4:	4d048493          	addi	s1,s1,1232 # 80011cc0 <pr>
    800067f8:	00048513          	mv	a0,s1
    800067fc:	00002597          	auipc	a1,0x2
    80006800:	eec58593          	addi	a1,a1,-276 # 800086e8 <CONSOLE_STATUS+0x6d8>
    80006804:	00000097          	auipc	ra,0x0
    80006808:	5f4080e7          	jalr	1524(ra) # 80006df8 <initlock>
    8000680c:	01813083          	ld	ra,24(sp)
    80006810:	01013403          	ld	s0,16(sp)
    80006814:	0004ac23          	sw	zero,24(s1)
    80006818:	00813483          	ld	s1,8(sp)
    8000681c:	02010113          	addi	sp,sp,32
    80006820:	00008067          	ret

0000000080006824 <uartinit>:
    80006824:	ff010113          	addi	sp,sp,-16
    80006828:	00813423          	sd	s0,8(sp)
    8000682c:	01010413          	addi	s0,sp,16
    80006830:	100007b7          	lui	a5,0x10000
    80006834:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006838:	f8000713          	li	a4,-128
    8000683c:	00e781a3          	sb	a4,3(a5)
    80006840:	00300713          	li	a4,3
    80006844:	00e78023          	sb	a4,0(a5)
    80006848:	000780a3          	sb	zero,1(a5)
    8000684c:	00e781a3          	sb	a4,3(a5)
    80006850:	00700693          	li	a3,7
    80006854:	00d78123          	sb	a3,2(a5)
    80006858:	00e780a3          	sb	a4,1(a5)
    8000685c:	00813403          	ld	s0,8(sp)
    80006860:	01010113          	addi	sp,sp,16
    80006864:	00008067          	ret

0000000080006868 <uartputc>:
    80006868:	00002797          	auipc	a5,0x2
    8000686c:	1307a783          	lw	a5,304(a5) # 80008998 <panicked>
    80006870:	00078463          	beqz	a5,80006878 <uartputc+0x10>
    80006874:	0000006f          	j	80006874 <uartputc+0xc>
    80006878:	fd010113          	addi	sp,sp,-48
    8000687c:	02813023          	sd	s0,32(sp)
    80006880:	00913c23          	sd	s1,24(sp)
    80006884:	01213823          	sd	s2,16(sp)
    80006888:	01313423          	sd	s3,8(sp)
    8000688c:	02113423          	sd	ra,40(sp)
    80006890:	03010413          	addi	s0,sp,48
    80006894:	00002917          	auipc	s2,0x2
    80006898:	10c90913          	addi	s2,s2,268 # 800089a0 <uart_tx_r>
    8000689c:	00093783          	ld	a5,0(s2)
    800068a0:	00002497          	auipc	s1,0x2
    800068a4:	10848493          	addi	s1,s1,264 # 800089a8 <uart_tx_w>
    800068a8:	0004b703          	ld	a4,0(s1)
    800068ac:	02078693          	addi	a3,a5,32
    800068b0:	00050993          	mv	s3,a0
    800068b4:	02e69c63          	bne	a3,a4,800068ec <uartputc+0x84>
    800068b8:	00001097          	auipc	ra,0x1
    800068bc:	834080e7          	jalr	-1996(ra) # 800070ec <push_on>
    800068c0:	00093783          	ld	a5,0(s2)
    800068c4:	0004b703          	ld	a4,0(s1)
    800068c8:	02078793          	addi	a5,a5,32
    800068cc:	00e79463          	bne	a5,a4,800068d4 <uartputc+0x6c>
    800068d0:	0000006f          	j	800068d0 <uartputc+0x68>
    800068d4:	00001097          	auipc	ra,0x1
    800068d8:	88c080e7          	jalr	-1908(ra) # 80007160 <pop_on>
    800068dc:	00093783          	ld	a5,0(s2)
    800068e0:	0004b703          	ld	a4,0(s1)
    800068e4:	02078693          	addi	a3,a5,32
    800068e8:	fce688e3          	beq	a3,a4,800068b8 <uartputc+0x50>
    800068ec:	01f77693          	andi	a3,a4,31
    800068f0:	0000b597          	auipc	a1,0xb
    800068f4:	3f058593          	addi	a1,a1,1008 # 80011ce0 <uart_tx_buf>
    800068f8:	00d586b3          	add	a3,a1,a3
    800068fc:	00170713          	addi	a4,a4,1
    80006900:	01368023          	sb	s3,0(a3)
    80006904:	00e4b023          	sd	a4,0(s1)
    80006908:	10000637          	lui	a2,0x10000
    8000690c:	02f71063          	bne	a4,a5,8000692c <uartputc+0xc4>
    80006910:	0340006f          	j	80006944 <uartputc+0xdc>
    80006914:	00074703          	lbu	a4,0(a4)
    80006918:	00f93023          	sd	a5,0(s2)
    8000691c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006920:	00093783          	ld	a5,0(s2)
    80006924:	0004b703          	ld	a4,0(s1)
    80006928:	00f70e63          	beq	a4,a5,80006944 <uartputc+0xdc>
    8000692c:	00564683          	lbu	a3,5(a2)
    80006930:	01f7f713          	andi	a4,a5,31
    80006934:	00e58733          	add	a4,a1,a4
    80006938:	0206f693          	andi	a3,a3,32
    8000693c:	00178793          	addi	a5,a5,1
    80006940:	fc069ae3          	bnez	a3,80006914 <uartputc+0xac>
    80006944:	02813083          	ld	ra,40(sp)
    80006948:	02013403          	ld	s0,32(sp)
    8000694c:	01813483          	ld	s1,24(sp)
    80006950:	01013903          	ld	s2,16(sp)
    80006954:	00813983          	ld	s3,8(sp)
    80006958:	03010113          	addi	sp,sp,48
    8000695c:	00008067          	ret

0000000080006960 <uartputc_sync>:
    80006960:	ff010113          	addi	sp,sp,-16
    80006964:	00813423          	sd	s0,8(sp)
    80006968:	01010413          	addi	s0,sp,16
    8000696c:	00002717          	auipc	a4,0x2
    80006970:	02c72703          	lw	a4,44(a4) # 80008998 <panicked>
    80006974:	02071663          	bnez	a4,800069a0 <uartputc_sync+0x40>
    80006978:	00050793          	mv	a5,a0
    8000697c:	100006b7          	lui	a3,0x10000
    80006980:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006984:	02077713          	andi	a4,a4,32
    80006988:	fe070ce3          	beqz	a4,80006980 <uartputc_sync+0x20>
    8000698c:	0ff7f793          	andi	a5,a5,255
    80006990:	00f68023          	sb	a5,0(a3)
    80006994:	00813403          	ld	s0,8(sp)
    80006998:	01010113          	addi	sp,sp,16
    8000699c:	00008067          	ret
    800069a0:	0000006f          	j	800069a0 <uartputc_sync+0x40>

00000000800069a4 <uartstart>:
    800069a4:	ff010113          	addi	sp,sp,-16
    800069a8:	00813423          	sd	s0,8(sp)
    800069ac:	01010413          	addi	s0,sp,16
    800069b0:	00002617          	auipc	a2,0x2
    800069b4:	ff060613          	addi	a2,a2,-16 # 800089a0 <uart_tx_r>
    800069b8:	00002517          	auipc	a0,0x2
    800069bc:	ff050513          	addi	a0,a0,-16 # 800089a8 <uart_tx_w>
    800069c0:	00063783          	ld	a5,0(a2)
    800069c4:	00053703          	ld	a4,0(a0)
    800069c8:	04f70263          	beq	a4,a5,80006a0c <uartstart+0x68>
    800069cc:	100005b7          	lui	a1,0x10000
    800069d0:	0000b817          	auipc	a6,0xb
    800069d4:	31080813          	addi	a6,a6,784 # 80011ce0 <uart_tx_buf>
    800069d8:	01c0006f          	j	800069f4 <uartstart+0x50>
    800069dc:	0006c703          	lbu	a4,0(a3)
    800069e0:	00f63023          	sd	a5,0(a2)
    800069e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800069e8:	00063783          	ld	a5,0(a2)
    800069ec:	00053703          	ld	a4,0(a0)
    800069f0:	00f70e63          	beq	a4,a5,80006a0c <uartstart+0x68>
    800069f4:	01f7f713          	andi	a4,a5,31
    800069f8:	00e806b3          	add	a3,a6,a4
    800069fc:	0055c703          	lbu	a4,5(a1)
    80006a00:	00178793          	addi	a5,a5,1
    80006a04:	02077713          	andi	a4,a4,32
    80006a08:	fc071ae3          	bnez	a4,800069dc <uartstart+0x38>
    80006a0c:	00813403          	ld	s0,8(sp)
    80006a10:	01010113          	addi	sp,sp,16
    80006a14:	00008067          	ret

0000000080006a18 <uartgetc>:
    80006a18:	ff010113          	addi	sp,sp,-16
    80006a1c:	00813423          	sd	s0,8(sp)
    80006a20:	01010413          	addi	s0,sp,16
    80006a24:	10000737          	lui	a4,0x10000
    80006a28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006a2c:	0017f793          	andi	a5,a5,1
    80006a30:	00078c63          	beqz	a5,80006a48 <uartgetc+0x30>
    80006a34:	00074503          	lbu	a0,0(a4)
    80006a38:	0ff57513          	andi	a0,a0,255
    80006a3c:	00813403          	ld	s0,8(sp)
    80006a40:	01010113          	addi	sp,sp,16
    80006a44:	00008067          	ret
    80006a48:	fff00513          	li	a0,-1
    80006a4c:	ff1ff06f          	j	80006a3c <uartgetc+0x24>

0000000080006a50 <uartintr>:
    80006a50:	100007b7          	lui	a5,0x10000
    80006a54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006a58:	0017f793          	andi	a5,a5,1
    80006a5c:	0a078463          	beqz	a5,80006b04 <uartintr+0xb4>
    80006a60:	fe010113          	addi	sp,sp,-32
    80006a64:	00813823          	sd	s0,16(sp)
    80006a68:	00913423          	sd	s1,8(sp)
    80006a6c:	00113c23          	sd	ra,24(sp)
    80006a70:	02010413          	addi	s0,sp,32
    80006a74:	100004b7          	lui	s1,0x10000
    80006a78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006a7c:	0ff57513          	andi	a0,a0,255
    80006a80:	fffff097          	auipc	ra,0xfffff
    80006a84:	534080e7          	jalr	1332(ra) # 80005fb4 <consoleintr>
    80006a88:	0054c783          	lbu	a5,5(s1)
    80006a8c:	0017f793          	andi	a5,a5,1
    80006a90:	fe0794e3          	bnez	a5,80006a78 <uartintr+0x28>
    80006a94:	00002617          	auipc	a2,0x2
    80006a98:	f0c60613          	addi	a2,a2,-244 # 800089a0 <uart_tx_r>
    80006a9c:	00002517          	auipc	a0,0x2
    80006aa0:	f0c50513          	addi	a0,a0,-244 # 800089a8 <uart_tx_w>
    80006aa4:	00063783          	ld	a5,0(a2)
    80006aa8:	00053703          	ld	a4,0(a0)
    80006aac:	04f70263          	beq	a4,a5,80006af0 <uartintr+0xa0>
    80006ab0:	100005b7          	lui	a1,0x10000
    80006ab4:	0000b817          	auipc	a6,0xb
    80006ab8:	22c80813          	addi	a6,a6,556 # 80011ce0 <uart_tx_buf>
    80006abc:	01c0006f          	j	80006ad8 <uartintr+0x88>
    80006ac0:	0006c703          	lbu	a4,0(a3)
    80006ac4:	00f63023          	sd	a5,0(a2)
    80006ac8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006acc:	00063783          	ld	a5,0(a2)
    80006ad0:	00053703          	ld	a4,0(a0)
    80006ad4:	00f70e63          	beq	a4,a5,80006af0 <uartintr+0xa0>
    80006ad8:	01f7f713          	andi	a4,a5,31
    80006adc:	00e806b3          	add	a3,a6,a4
    80006ae0:	0055c703          	lbu	a4,5(a1)
    80006ae4:	00178793          	addi	a5,a5,1
    80006ae8:	02077713          	andi	a4,a4,32
    80006aec:	fc071ae3          	bnez	a4,80006ac0 <uartintr+0x70>
    80006af0:	01813083          	ld	ra,24(sp)
    80006af4:	01013403          	ld	s0,16(sp)
    80006af8:	00813483          	ld	s1,8(sp)
    80006afc:	02010113          	addi	sp,sp,32
    80006b00:	00008067          	ret
    80006b04:	00002617          	auipc	a2,0x2
    80006b08:	e9c60613          	addi	a2,a2,-356 # 800089a0 <uart_tx_r>
    80006b0c:	00002517          	auipc	a0,0x2
    80006b10:	e9c50513          	addi	a0,a0,-356 # 800089a8 <uart_tx_w>
    80006b14:	00063783          	ld	a5,0(a2)
    80006b18:	00053703          	ld	a4,0(a0)
    80006b1c:	04f70263          	beq	a4,a5,80006b60 <uartintr+0x110>
    80006b20:	100005b7          	lui	a1,0x10000
    80006b24:	0000b817          	auipc	a6,0xb
    80006b28:	1bc80813          	addi	a6,a6,444 # 80011ce0 <uart_tx_buf>
    80006b2c:	01c0006f          	j	80006b48 <uartintr+0xf8>
    80006b30:	0006c703          	lbu	a4,0(a3)
    80006b34:	00f63023          	sd	a5,0(a2)
    80006b38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006b3c:	00063783          	ld	a5,0(a2)
    80006b40:	00053703          	ld	a4,0(a0)
    80006b44:	02f70063          	beq	a4,a5,80006b64 <uartintr+0x114>
    80006b48:	01f7f713          	andi	a4,a5,31
    80006b4c:	00e806b3          	add	a3,a6,a4
    80006b50:	0055c703          	lbu	a4,5(a1)
    80006b54:	00178793          	addi	a5,a5,1
    80006b58:	02077713          	andi	a4,a4,32
    80006b5c:	fc071ae3          	bnez	a4,80006b30 <uartintr+0xe0>
    80006b60:	00008067          	ret
    80006b64:	00008067          	ret

0000000080006b68 <kinit>:
    80006b68:	fc010113          	addi	sp,sp,-64
    80006b6c:	02913423          	sd	s1,40(sp)
    80006b70:	fffff7b7          	lui	a5,0xfffff
    80006b74:	00011497          	auipc	s1,0x11
    80006b78:	48b48493          	addi	s1,s1,1163 # 80017fff <end+0xfff>
    80006b7c:	02813823          	sd	s0,48(sp)
    80006b80:	01313c23          	sd	s3,24(sp)
    80006b84:	00f4f4b3          	and	s1,s1,a5
    80006b88:	02113c23          	sd	ra,56(sp)
    80006b8c:	03213023          	sd	s2,32(sp)
    80006b90:	01413823          	sd	s4,16(sp)
    80006b94:	01513423          	sd	s5,8(sp)
    80006b98:	04010413          	addi	s0,sp,64
    80006b9c:	000017b7          	lui	a5,0x1
    80006ba0:	01100993          	li	s3,17
    80006ba4:	00f487b3          	add	a5,s1,a5
    80006ba8:	01b99993          	slli	s3,s3,0x1b
    80006bac:	06f9e063          	bltu	s3,a5,80006c0c <kinit+0xa4>
    80006bb0:	00010a97          	auipc	s5,0x10
    80006bb4:	450a8a93          	addi	s5,s5,1104 # 80017000 <end>
    80006bb8:	0754ec63          	bltu	s1,s5,80006c30 <kinit+0xc8>
    80006bbc:	0734fa63          	bgeu	s1,s3,80006c30 <kinit+0xc8>
    80006bc0:	00088a37          	lui	s4,0x88
    80006bc4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006bc8:	00002917          	auipc	s2,0x2
    80006bcc:	de890913          	addi	s2,s2,-536 # 800089b0 <kmem>
    80006bd0:	00ca1a13          	slli	s4,s4,0xc
    80006bd4:	0140006f          	j	80006be8 <kinit+0x80>
    80006bd8:	000017b7          	lui	a5,0x1
    80006bdc:	00f484b3          	add	s1,s1,a5
    80006be0:	0554e863          	bltu	s1,s5,80006c30 <kinit+0xc8>
    80006be4:	0534f663          	bgeu	s1,s3,80006c30 <kinit+0xc8>
    80006be8:	00001637          	lui	a2,0x1
    80006bec:	00100593          	li	a1,1
    80006bf0:	00048513          	mv	a0,s1
    80006bf4:	00000097          	auipc	ra,0x0
    80006bf8:	5e4080e7          	jalr	1508(ra) # 800071d8 <__memset>
    80006bfc:	00093783          	ld	a5,0(s2)
    80006c00:	00f4b023          	sd	a5,0(s1)
    80006c04:	00993023          	sd	s1,0(s2)
    80006c08:	fd4498e3          	bne	s1,s4,80006bd8 <kinit+0x70>
    80006c0c:	03813083          	ld	ra,56(sp)
    80006c10:	03013403          	ld	s0,48(sp)
    80006c14:	02813483          	ld	s1,40(sp)
    80006c18:	02013903          	ld	s2,32(sp)
    80006c1c:	01813983          	ld	s3,24(sp)
    80006c20:	01013a03          	ld	s4,16(sp)
    80006c24:	00813a83          	ld	s5,8(sp)
    80006c28:	04010113          	addi	sp,sp,64
    80006c2c:	00008067          	ret
    80006c30:	00002517          	auipc	a0,0x2
    80006c34:	ad850513          	addi	a0,a0,-1320 # 80008708 <digits+0x18>
    80006c38:	fffff097          	auipc	ra,0xfffff
    80006c3c:	4b4080e7          	jalr	1204(ra) # 800060ec <panic>

0000000080006c40 <freerange>:
    80006c40:	fc010113          	addi	sp,sp,-64
    80006c44:	000017b7          	lui	a5,0x1
    80006c48:	02913423          	sd	s1,40(sp)
    80006c4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006c50:	009504b3          	add	s1,a0,s1
    80006c54:	fffff537          	lui	a0,0xfffff
    80006c58:	02813823          	sd	s0,48(sp)
    80006c5c:	02113c23          	sd	ra,56(sp)
    80006c60:	03213023          	sd	s2,32(sp)
    80006c64:	01313c23          	sd	s3,24(sp)
    80006c68:	01413823          	sd	s4,16(sp)
    80006c6c:	01513423          	sd	s5,8(sp)
    80006c70:	01613023          	sd	s6,0(sp)
    80006c74:	04010413          	addi	s0,sp,64
    80006c78:	00a4f4b3          	and	s1,s1,a0
    80006c7c:	00f487b3          	add	a5,s1,a5
    80006c80:	06f5e463          	bltu	a1,a5,80006ce8 <freerange+0xa8>
    80006c84:	00010a97          	auipc	s5,0x10
    80006c88:	37ca8a93          	addi	s5,s5,892 # 80017000 <end>
    80006c8c:	0954e263          	bltu	s1,s5,80006d10 <freerange+0xd0>
    80006c90:	01100993          	li	s3,17
    80006c94:	01b99993          	slli	s3,s3,0x1b
    80006c98:	0734fc63          	bgeu	s1,s3,80006d10 <freerange+0xd0>
    80006c9c:	00058a13          	mv	s4,a1
    80006ca0:	00002917          	auipc	s2,0x2
    80006ca4:	d1090913          	addi	s2,s2,-752 # 800089b0 <kmem>
    80006ca8:	00002b37          	lui	s6,0x2
    80006cac:	0140006f          	j	80006cc0 <freerange+0x80>
    80006cb0:	000017b7          	lui	a5,0x1
    80006cb4:	00f484b3          	add	s1,s1,a5
    80006cb8:	0554ec63          	bltu	s1,s5,80006d10 <freerange+0xd0>
    80006cbc:	0534fa63          	bgeu	s1,s3,80006d10 <freerange+0xd0>
    80006cc0:	00001637          	lui	a2,0x1
    80006cc4:	00100593          	li	a1,1
    80006cc8:	00048513          	mv	a0,s1
    80006ccc:	00000097          	auipc	ra,0x0
    80006cd0:	50c080e7          	jalr	1292(ra) # 800071d8 <__memset>
    80006cd4:	00093703          	ld	a4,0(s2)
    80006cd8:	016487b3          	add	a5,s1,s6
    80006cdc:	00e4b023          	sd	a4,0(s1)
    80006ce0:	00993023          	sd	s1,0(s2)
    80006ce4:	fcfa76e3          	bgeu	s4,a5,80006cb0 <freerange+0x70>
    80006ce8:	03813083          	ld	ra,56(sp)
    80006cec:	03013403          	ld	s0,48(sp)
    80006cf0:	02813483          	ld	s1,40(sp)
    80006cf4:	02013903          	ld	s2,32(sp)
    80006cf8:	01813983          	ld	s3,24(sp)
    80006cfc:	01013a03          	ld	s4,16(sp)
    80006d00:	00813a83          	ld	s5,8(sp)
    80006d04:	00013b03          	ld	s6,0(sp)
    80006d08:	04010113          	addi	sp,sp,64
    80006d0c:	00008067          	ret
    80006d10:	00002517          	auipc	a0,0x2
    80006d14:	9f850513          	addi	a0,a0,-1544 # 80008708 <digits+0x18>
    80006d18:	fffff097          	auipc	ra,0xfffff
    80006d1c:	3d4080e7          	jalr	980(ra) # 800060ec <panic>

0000000080006d20 <kfree>:
    80006d20:	fe010113          	addi	sp,sp,-32
    80006d24:	00813823          	sd	s0,16(sp)
    80006d28:	00113c23          	sd	ra,24(sp)
    80006d2c:	00913423          	sd	s1,8(sp)
    80006d30:	02010413          	addi	s0,sp,32
    80006d34:	03451793          	slli	a5,a0,0x34
    80006d38:	04079c63          	bnez	a5,80006d90 <kfree+0x70>
    80006d3c:	00010797          	auipc	a5,0x10
    80006d40:	2c478793          	addi	a5,a5,708 # 80017000 <end>
    80006d44:	00050493          	mv	s1,a0
    80006d48:	04f56463          	bltu	a0,a5,80006d90 <kfree+0x70>
    80006d4c:	01100793          	li	a5,17
    80006d50:	01b79793          	slli	a5,a5,0x1b
    80006d54:	02f57e63          	bgeu	a0,a5,80006d90 <kfree+0x70>
    80006d58:	00001637          	lui	a2,0x1
    80006d5c:	00100593          	li	a1,1
    80006d60:	00000097          	auipc	ra,0x0
    80006d64:	478080e7          	jalr	1144(ra) # 800071d8 <__memset>
    80006d68:	00002797          	auipc	a5,0x2
    80006d6c:	c4878793          	addi	a5,a5,-952 # 800089b0 <kmem>
    80006d70:	0007b703          	ld	a4,0(a5)
    80006d74:	01813083          	ld	ra,24(sp)
    80006d78:	01013403          	ld	s0,16(sp)
    80006d7c:	00e4b023          	sd	a4,0(s1)
    80006d80:	0097b023          	sd	s1,0(a5)
    80006d84:	00813483          	ld	s1,8(sp)
    80006d88:	02010113          	addi	sp,sp,32
    80006d8c:	00008067          	ret
    80006d90:	00002517          	auipc	a0,0x2
    80006d94:	97850513          	addi	a0,a0,-1672 # 80008708 <digits+0x18>
    80006d98:	fffff097          	auipc	ra,0xfffff
    80006d9c:	354080e7          	jalr	852(ra) # 800060ec <panic>

0000000080006da0 <kalloc>:
    80006da0:	fe010113          	addi	sp,sp,-32
    80006da4:	00813823          	sd	s0,16(sp)
    80006da8:	00913423          	sd	s1,8(sp)
    80006dac:	00113c23          	sd	ra,24(sp)
    80006db0:	02010413          	addi	s0,sp,32
    80006db4:	00002797          	auipc	a5,0x2
    80006db8:	bfc78793          	addi	a5,a5,-1028 # 800089b0 <kmem>
    80006dbc:	0007b483          	ld	s1,0(a5)
    80006dc0:	02048063          	beqz	s1,80006de0 <kalloc+0x40>
    80006dc4:	0004b703          	ld	a4,0(s1)
    80006dc8:	00001637          	lui	a2,0x1
    80006dcc:	00500593          	li	a1,5
    80006dd0:	00048513          	mv	a0,s1
    80006dd4:	00e7b023          	sd	a4,0(a5)
    80006dd8:	00000097          	auipc	ra,0x0
    80006ddc:	400080e7          	jalr	1024(ra) # 800071d8 <__memset>
    80006de0:	01813083          	ld	ra,24(sp)
    80006de4:	01013403          	ld	s0,16(sp)
    80006de8:	00048513          	mv	a0,s1
    80006dec:	00813483          	ld	s1,8(sp)
    80006df0:	02010113          	addi	sp,sp,32
    80006df4:	00008067          	ret

0000000080006df8 <initlock>:
    80006df8:	ff010113          	addi	sp,sp,-16
    80006dfc:	00813423          	sd	s0,8(sp)
    80006e00:	01010413          	addi	s0,sp,16
    80006e04:	00813403          	ld	s0,8(sp)
    80006e08:	00b53423          	sd	a1,8(a0)
    80006e0c:	00052023          	sw	zero,0(a0)
    80006e10:	00053823          	sd	zero,16(a0)
    80006e14:	01010113          	addi	sp,sp,16
    80006e18:	00008067          	ret

0000000080006e1c <acquire>:
    80006e1c:	fe010113          	addi	sp,sp,-32
    80006e20:	00813823          	sd	s0,16(sp)
    80006e24:	00913423          	sd	s1,8(sp)
    80006e28:	00113c23          	sd	ra,24(sp)
    80006e2c:	01213023          	sd	s2,0(sp)
    80006e30:	02010413          	addi	s0,sp,32
    80006e34:	00050493          	mv	s1,a0
    80006e38:	10002973          	csrr	s2,sstatus
    80006e3c:	100027f3          	csrr	a5,sstatus
    80006e40:	ffd7f793          	andi	a5,a5,-3
    80006e44:	10079073          	csrw	sstatus,a5
    80006e48:	fffff097          	auipc	ra,0xfffff
    80006e4c:	8e0080e7          	jalr	-1824(ra) # 80005728 <mycpu>
    80006e50:	07852783          	lw	a5,120(a0)
    80006e54:	06078e63          	beqz	a5,80006ed0 <acquire+0xb4>
    80006e58:	fffff097          	auipc	ra,0xfffff
    80006e5c:	8d0080e7          	jalr	-1840(ra) # 80005728 <mycpu>
    80006e60:	07852783          	lw	a5,120(a0)
    80006e64:	0004a703          	lw	a4,0(s1)
    80006e68:	0017879b          	addiw	a5,a5,1
    80006e6c:	06f52c23          	sw	a5,120(a0)
    80006e70:	04071063          	bnez	a4,80006eb0 <acquire+0x94>
    80006e74:	00100713          	li	a4,1
    80006e78:	00070793          	mv	a5,a4
    80006e7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006e80:	0007879b          	sext.w	a5,a5
    80006e84:	fe079ae3          	bnez	a5,80006e78 <acquire+0x5c>
    80006e88:	0ff0000f          	fence
    80006e8c:	fffff097          	auipc	ra,0xfffff
    80006e90:	89c080e7          	jalr	-1892(ra) # 80005728 <mycpu>
    80006e94:	01813083          	ld	ra,24(sp)
    80006e98:	01013403          	ld	s0,16(sp)
    80006e9c:	00a4b823          	sd	a0,16(s1)
    80006ea0:	00013903          	ld	s2,0(sp)
    80006ea4:	00813483          	ld	s1,8(sp)
    80006ea8:	02010113          	addi	sp,sp,32
    80006eac:	00008067          	ret
    80006eb0:	0104b903          	ld	s2,16(s1)
    80006eb4:	fffff097          	auipc	ra,0xfffff
    80006eb8:	874080e7          	jalr	-1932(ra) # 80005728 <mycpu>
    80006ebc:	faa91ce3          	bne	s2,a0,80006e74 <acquire+0x58>
    80006ec0:	00002517          	auipc	a0,0x2
    80006ec4:	85050513          	addi	a0,a0,-1968 # 80008710 <digits+0x20>
    80006ec8:	fffff097          	auipc	ra,0xfffff
    80006ecc:	224080e7          	jalr	548(ra) # 800060ec <panic>
    80006ed0:	00195913          	srli	s2,s2,0x1
    80006ed4:	fffff097          	auipc	ra,0xfffff
    80006ed8:	854080e7          	jalr	-1964(ra) # 80005728 <mycpu>
    80006edc:	00197913          	andi	s2,s2,1
    80006ee0:	07252e23          	sw	s2,124(a0)
    80006ee4:	f75ff06f          	j	80006e58 <acquire+0x3c>

0000000080006ee8 <release>:
    80006ee8:	fe010113          	addi	sp,sp,-32
    80006eec:	00813823          	sd	s0,16(sp)
    80006ef0:	00113c23          	sd	ra,24(sp)
    80006ef4:	00913423          	sd	s1,8(sp)
    80006ef8:	01213023          	sd	s2,0(sp)
    80006efc:	02010413          	addi	s0,sp,32
    80006f00:	00052783          	lw	a5,0(a0)
    80006f04:	00079a63          	bnez	a5,80006f18 <release+0x30>
    80006f08:	00002517          	auipc	a0,0x2
    80006f0c:	81050513          	addi	a0,a0,-2032 # 80008718 <digits+0x28>
    80006f10:	fffff097          	auipc	ra,0xfffff
    80006f14:	1dc080e7          	jalr	476(ra) # 800060ec <panic>
    80006f18:	01053903          	ld	s2,16(a0)
    80006f1c:	00050493          	mv	s1,a0
    80006f20:	fffff097          	auipc	ra,0xfffff
    80006f24:	808080e7          	jalr	-2040(ra) # 80005728 <mycpu>
    80006f28:	fea910e3          	bne	s2,a0,80006f08 <release+0x20>
    80006f2c:	0004b823          	sd	zero,16(s1)
    80006f30:	0ff0000f          	fence
    80006f34:	0f50000f          	fence	iorw,ow
    80006f38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006f3c:	ffffe097          	auipc	ra,0xffffe
    80006f40:	7ec080e7          	jalr	2028(ra) # 80005728 <mycpu>
    80006f44:	100027f3          	csrr	a5,sstatus
    80006f48:	0027f793          	andi	a5,a5,2
    80006f4c:	04079a63          	bnez	a5,80006fa0 <release+0xb8>
    80006f50:	07852783          	lw	a5,120(a0)
    80006f54:	02f05e63          	blez	a5,80006f90 <release+0xa8>
    80006f58:	fff7871b          	addiw	a4,a5,-1
    80006f5c:	06e52c23          	sw	a4,120(a0)
    80006f60:	00071c63          	bnez	a4,80006f78 <release+0x90>
    80006f64:	07c52783          	lw	a5,124(a0)
    80006f68:	00078863          	beqz	a5,80006f78 <release+0x90>
    80006f6c:	100027f3          	csrr	a5,sstatus
    80006f70:	0027e793          	ori	a5,a5,2
    80006f74:	10079073          	csrw	sstatus,a5
    80006f78:	01813083          	ld	ra,24(sp)
    80006f7c:	01013403          	ld	s0,16(sp)
    80006f80:	00813483          	ld	s1,8(sp)
    80006f84:	00013903          	ld	s2,0(sp)
    80006f88:	02010113          	addi	sp,sp,32
    80006f8c:	00008067          	ret
    80006f90:	00001517          	auipc	a0,0x1
    80006f94:	7a850513          	addi	a0,a0,1960 # 80008738 <digits+0x48>
    80006f98:	fffff097          	auipc	ra,0xfffff
    80006f9c:	154080e7          	jalr	340(ra) # 800060ec <panic>
    80006fa0:	00001517          	auipc	a0,0x1
    80006fa4:	78050513          	addi	a0,a0,1920 # 80008720 <digits+0x30>
    80006fa8:	fffff097          	auipc	ra,0xfffff
    80006fac:	144080e7          	jalr	324(ra) # 800060ec <panic>

0000000080006fb0 <holding>:
    80006fb0:	00052783          	lw	a5,0(a0)
    80006fb4:	00079663          	bnez	a5,80006fc0 <holding+0x10>
    80006fb8:	00000513          	li	a0,0
    80006fbc:	00008067          	ret
    80006fc0:	fe010113          	addi	sp,sp,-32
    80006fc4:	00813823          	sd	s0,16(sp)
    80006fc8:	00913423          	sd	s1,8(sp)
    80006fcc:	00113c23          	sd	ra,24(sp)
    80006fd0:	02010413          	addi	s0,sp,32
    80006fd4:	01053483          	ld	s1,16(a0)
    80006fd8:	ffffe097          	auipc	ra,0xffffe
    80006fdc:	750080e7          	jalr	1872(ra) # 80005728 <mycpu>
    80006fe0:	01813083          	ld	ra,24(sp)
    80006fe4:	01013403          	ld	s0,16(sp)
    80006fe8:	40a48533          	sub	a0,s1,a0
    80006fec:	00153513          	seqz	a0,a0
    80006ff0:	00813483          	ld	s1,8(sp)
    80006ff4:	02010113          	addi	sp,sp,32
    80006ff8:	00008067          	ret

0000000080006ffc <push_off>:
    80006ffc:	fe010113          	addi	sp,sp,-32
    80007000:	00813823          	sd	s0,16(sp)
    80007004:	00113c23          	sd	ra,24(sp)
    80007008:	00913423          	sd	s1,8(sp)
    8000700c:	02010413          	addi	s0,sp,32
    80007010:	100024f3          	csrr	s1,sstatus
    80007014:	100027f3          	csrr	a5,sstatus
    80007018:	ffd7f793          	andi	a5,a5,-3
    8000701c:	10079073          	csrw	sstatus,a5
    80007020:	ffffe097          	auipc	ra,0xffffe
    80007024:	708080e7          	jalr	1800(ra) # 80005728 <mycpu>
    80007028:	07852783          	lw	a5,120(a0)
    8000702c:	02078663          	beqz	a5,80007058 <push_off+0x5c>
    80007030:	ffffe097          	auipc	ra,0xffffe
    80007034:	6f8080e7          	jalr	1784(ra) # 80005728 <mycpu>
    80007038:	07852783          	lw	a5,120(a0)
    8000703c:	01813083          	ld	ra,24(sp)
    80007040:	01013403          	ld	s0,16(sp)
    80007044:	0017879b          	addiw	a5,a5,1
    80007048:	06f52c23          	sw	a5,120(a0)
    8000704c:	00813483          	ld	s1,8(sp)
    80007050:	02010113          	addi	sp,sp,32
    80007054:	00008067          	ret
    80007058:	0014d493          	srli	s1,s1,0x1
    8000705c:	ffffe097          	auipc	ra,0xffffe
    80007060:	6cc080e7          	jalr	1740(ra) # 80005728 <mycpu>
    80007064:	0014f493          	andi	s1,s1,1
    80007068:	06952e23          	sw	s1,124(a0)
    8000706c:	fc5ff06f          	j	80007030 <push_off+0x34>

0000000080007070 <pop_off>:
    80007070:	ff010113          	addi	sp,sp,-16
    80007074:	00813023          	sd	s0,0(sp)
    80007078:	00113423          	sd	ra,8(sp)
    8000707c:	01010413          	addi	s0,sp,16
    80007080:	ffffe097          	auipc	ra,0xffffe
    80007084:	6a8080e7          	jalr	1704(ra) # 80005728 <mycpu>
    80007088:	100027f3          	csrr	a5,sstatus
    8000708c:	0027f793          	andi	a5,a5,2
    80007090:	04079663          	bnez	a5,800070dc <pop_off+0x6c>
    80007094:	07852783          	lw	a5,120(a0)
    80007098:	02f05a63          	blez	a5,800070cc <pop_off+0x5c>
    8000709c:	fff7871b          	addiw	a4,a5,-1
    800070a0:	06e52c23          	sw	a4,120(a0)
    800070a4:	00071c63          	bnez	a4,800070bc <pop_off+0x4c>
    800070a8:	07c52783          	lw	a5,124(a0)
    800070ac:	00078863          	beqz	a5,800070bc <pop_off+0x4c>
    800070b0:	100027f3          	csrr	a5,sstatus
    800070b4:	0027e793          	ori	a5,a5,2
    800070b8:	10079073          	csrw	sstatus,a5
    800070bc:	00813083          	ld	ra,8(sp)
    800070c0:	00013403          	ld	s0,0(sp)
    800070c4:	01010113          	addi	sp,sp,16
    800070c8:	00008067          	ret
    800070cc:	00001517          	auipc	a0,0x1
    800070d0:	66c50513          	addi	a0,a0,1644 # 80008738 <digits+0x48>
    800070d4:	fffff097          	auipc	ra,0xfffff
    800070d8:	018080e7          	jalr	24(ra) # 800060ec <panic>
    800070dc:	00001517          	auipc	a0,0x1
    800070e0:	64450513          	addi	a0,a0,1604 # 80008720 <digits+0x30>
    800070e4:	fffff097          	auipc	ra,0xfffff
    800070e8:	008080e7          	jalr	8(ra) # 800060ec <panic>

00000000800070ec <push_on>:
    800070ec:	fe010113          	addi	sp,sp,-32
    800070f0:	00813823          	sd	s0,16(sp)
    800070f4:	00113c23          	sd	ra,24(sp)
    800070f8:	00913423          	sd	s1,8(sp)
    800070fc:	02010413          	addi	s0,sp,32
    80007100:	100024f3          	csrr	s1,sstatus
    80007104:	100027f3          	csrr	a5,sstatus
    80007108:	0027e793          	ori	a5,a5,2
    8000710c:	10079073          	csrw	sstatus,a5
    80007110:	ffffe097          	auipc	ra,0xffffe
    80007114:	618080e7          	jalr	1560(ra) # 80005728 <mycpu>
    80007118:	07852783          	lw	a5,120(a0)
    8000711c:	02078663          	beqz	a5,80007148 <push_on+0x5c>
    80007120:	ffffe097          	auipc	ra,0xffffe
    80007124:	608080e7          	jalr	1544(ra) # 80005728 <mycpu>
    80007128:	07852783          	lw	a5,120(a0)
    8000712c:	01813083          	ld	ra,24(sp)
    80007130:	01013403          	ld	s0,16(sp)
    80007134:	0017879b          	addiw	a5,a5,1
    80007138:	06f52c23          	sw	a5,120(a0)
    8000713c:	00813483          	ld	s1,8(sp)
    80007140:	02010113          	addi	sp,sp,32
    80007144:	00008067          	ret
    80007148:	0014d493          	srli	s1,s1,0x1
    8000714c:	ffffe097          	auipc	ra,0xffffe
    80007150:	5dc080e7          	jalr	1500(ra) # 80005728 <mycpu>
    80007154:	0014f493          	andi	s1,s1,1
    80007158:	06952e23          	sw	s1,124(a0)
    8000715c:	fc5ff06f          	j	80007120 <push_on+0x34>

0000000080007160 <pop_on>:
    80007160:	ff010113          	addi	sp,sp,-16
    80007164:	00813023          	sd	s0,0(sp)
    80007168:	00113423          	sd	ra,8(sp)
    8000716c:	01010413          	addi	s0,sp,16
    80007170:	ffffe097          	auipc	ra,0xffffe
    80007174:	5b8080e7          	jalr	1464(ra) # 80005728 <mycpu>
    80007178:	100027f3          	csrr	a5,sstatus
    8000717c:	0027f793          	andi	a5,a5,2
    80007180:	04078463          	beqz	a5,800071c8 <pop_on+0x68>
    80007184:	07852783          	lw	a5,120(a0)
    80007188:	02f05863          	blez	a5,800071b8 <pop_on+0x58>
    8000718c:	fff7879b          	addiw	a5,a5,-1
    80007190:	06f52c23          	sw	a5,120(a0)
    80007194:	07853783          	ld	a5,120(a0)
    80007198:	00079863          	bnez	a5,800071a8 <pop_on+0x48>
    8000719c:	100027f3          	csrr	a5,sstatus
    800071a0:	ffd7f793          	andi	a5,a5,-3
    800071a4:	10079073          	csrw	sstatus,a5
    800071a8:	00813083          	ld	ra,8(sp)
    800071ac:	00013403          	ld	s0,0(sp)
    800071b0:	01010113          	addi	sp,sp,16
    800071b4:	00008067          	ret
    800071b8:	00001517          	auipc	a0,0x1
    800071bc:	5a850513          	addi	a0,a0,1448 # 80008760 <digits+0x70>
    800071c0:	fffff097          	auipc	ra,0xfffff
    800071c4:	f2c080e7          	jalr	-212(ra) # 800060ec <panic>
    800071c8:	00001517          	auipc	a0,0x1
    800071cc:	57850513          	addi	a0,a0,1400 # 80008740 <digits+0x50>
    800071d0:	fffff097          	auipc	ra,0xfffff
    800071d4:	f1c080e7          	jalr	-228(ra) # 800060ec <panic>

00000000800071d8 <__memset>:
    800071d8:	ff010113          	addi	sp,sp,-16
    800071dc:	00813423          	sd	s0,8(sp)
    800071e0:	01010413          	addi	s0,sp,16
    800071e4:	1a060e63          	beqz	a2,800073a0 <__memset+0x1c8>
    800071e8:	40a007b3          	neg	a5,a0
    800071ec:	0077f793          	andi	a5,a5,7
    800071f0:	00778693          	addi	a3,a5,7
    800071f4:	00b00813          	li	a6,11
    800071f8:	0ff5f593          	andi	a1,a1,255
    800071fc:	fff6071b          	addiw	a4,a2,-1
    80007200:	1b06e663          	bltu	a3,a6,800073ac <__memset+0x1d4>
    80007204:	1cd76463          	bltu	a4,a3,800073cc <__memset+0x1f4>
    80007208:	1a078e63          	beqz	a5,800073c4 <__memset+0x1ec>
    8000720c:	00b50023          	sb	a1,0(a0)
    80007210:	00100713          	li	a4,1
    80007214:	1ae78463          	beq	a5,a4,800073bc <__memset+0x1e4>
    80007218:	00b500a3          	sb	a1,1(a0)
    8000721c:	00200713          	li	a4,2
    80007220:	1ae78a63          	beq	a5,a4,800073d4 <__memset+0x1fc>
    80007224:	00b50123          	sb	a1,2(a0)
    80007228:	00300713          	li	a4,3
    8000722c:	18e78463          	beq	a5,a4,800073b4 <__memset+0x1dc>
    80007230:	00b501a3          	sb	a1,3(a0)
    80007234:	00400713          	li	a4,4
    80007238:	1ae78263          	beq	a5,a4,800073dc <__memset+0x204>
    8000723c:	00b50223          	sb	a1,4(a0)
    80007240:	00500713          	li	a4,5
    80007244:	1ae78063          	beq	a5,a4,800073e4 <__memset+0x20c>
    80007248:	00b502a3          	sb	a1,5(a0)
    8000724c:	00700713          	li	a4,7
    80007250:	18e79e63          	bne	a5,a4,800073ec <__memset+0x214>
    80007254:	00b50323          	sb	a1,6(a0)
    80007258:	00700e93          	li	t4,7
    8000725c:	00859713          	slli	a4,a1,0x8
    80007260:	00e5e733          	or	a4,a1,a4
    80007264:	01059e13          	slli	t3,a1,0x10
    80007268:	01c76e33          	or	t3,a4,t3
    8000726c:	01859313          	slli	t1,a1,0x18
    80007270:	006e6333          	or	t1,t3,t1
    80007274:	02059893          	slli	a7,a1,0x20
    80007278:	40f60e3b          	subw	t3,a2,a5
    8000727c:	011368b3          	or	a7,t1,a7
    80007280:	02859813          	slli	a6,a1,0x28
    80007284:	0108e833          	or	a6,a7,a6
    80007288:	03059693          	slli	a3,a1,0x30
    8000728c:	003e589b          	srliw	a7,t3,0x3
    80007290:	00d866b3          	or	a3,a6,a3
    80007294:	03859713          	slli	a4,a1,0x38
    80007298:	00389813          	slli	a6,a7,0x3
    8000729c:	00f507b3          	add	a5,a0,a5
    800072a0:	00e6e733          	or	a4,a3,a4
    800072a4:	000e089b          	sext.w	a7,t3
    800072a8:	00f806b3          	add	a3,a6,a5
    800072ac:	00e7b023          	sd	a4,0(a5)
    800072b0:	00878793          	addi	a5,a5,8
    800072b4:	fed79ce3          	bne	a5,a3,800072ac <__memset+0xd4>
    800072b8:	ff8e7793          	andi	a5,t3,-8
    800072bc:	0007871b          	sext.w	a4,a5
    800072c0:	01d787bb          	addw	a5,a5,t4
    800072c4:	0ce88e63          	beq	a7,a4,800073a0 <__memset+0x1c8>
    800072c8:	00f50733          	add	a4,a0,a5
    800072cc:	00b70023          	sb	a1,0(a4)
    800072d0:	0017871b          	addiw	a4,a5,1
    800072d4:	0cc77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    800072d8:	00e50733          	add	a4,a0,a4
    800072dc:	00b70023          	sb	a1,0(a4)
    800072e0:	0027871b          	addiw	a4,a5,2
    800072e4:	0ac77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    800072e8:	00e50733          	add	a4,a0,a4
    800072ec:	00b70023          	sb	a1,0(a4)
    800072f0:	0037871b          	addiw	a4,a5,3
    800072f4:	0ac77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    800072f8:	00e50733          	add	a4,a0,a4
    800072fc:	00b70023          	sb	a1,0(a4)
    80007300:	0047871b          	addiw	a4,a5,4
    80007304:	08c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007308:	00e50733          	add	a4,a0,a4
    8000730c:	00b70023          	sb	a1,0(a4)
    80007310:	0057871b          	addiw	a4,a5,5
    80007314:	08c77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007318:	00e50733          	add	a4,a0,a4
    8000731c:	00b70023          	sb	a1,0(a4)
    80007320:	0067871b          	addiw	a4,a5,6
    80007324:	06c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007328:	00e50733          	add	a4,a0,a4
    8000732c:	00b70023          	sb	a1,0(a4)
    80007330:	0077871b          	addiw	a4,a5,7
    80007334:	06c77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007338:	00e50733          	add	a4,a0,a4
    8000733c:	00b70023          	sb	a1,0(a4)
    80007340:	0087871b          	addiw	a4,a5,8
    80007344:	04c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007348:	00e50733          	add	a4,a0,a4
    8000734c:	00b70023          	sb	a1,0(a4)
    80007350:	0097871b          	addiw	a4,a5,9
    80007354:	04c77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007358:	00e50733          	add	a4,a0,a4
    8000735c:	00b70023          	sb	a1,0(a4)
    80007360:	00a7871b          	addiw	a4,a5,10
    80007364:	02c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007368:	00e50733          	add	a4,a0,a4
    8000736c:	00b70023          	sb	a1,0(a4)
    80007370:	00b7871b          	addiw	a4,a5,11
    80007374:	02c77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007378:	00e50733          	add	a4,a0,a4
    8000737c:	00b70023          	sb	a1,0(a4)
    80007380:	00c7871b          	addiw	a4,a5,12
    80007384:	00c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007388:	00e50733          	add	a4,a0,a4
    8000738c:	00b70023          	sb	a1,0(a4)
    80007390:	00d7879b          	addiw	a5,a5,13
    80007394:	00c7f663          	bgeu	a5,a2,800073a0 <__memset+0x1c8>
    80007398:	00f507b3          	add	a5,a0,a5
    8000739c:	00b78023          	sb	a1,0(a5)
    800073a0:	00813403          	ld	s0,8(sp)
    800073a4:	01010113          	addi	sp,sp,16
    800073a8:	00008067          	ret
    800073ac:	00b00693          	li	a3,11
    800073b0:	e55ff06f          	j	80007204 <__memset+0x2c>
    800073b4:	00300e93          	li	t4,3
    800073b8:	ea5ff06f          	j	8000725c <__memset+0x84>
    800073bc:	00100e93          	li	t4,1
    800073c0:	e9dff06f          	j	8000725c <__memset+0x84>
    800073c4:	00000e93          	li	t4,0
    800073c8:	e95ff06f          	j	8000725c <__memset+0x84>
    800073cc:	00000793          	li	a5,0
    800073d0:	ef9ff06f          	j	800072c8 <__memset+0xf0>
    800073d4:	00200e93          	li	t4,2
    800073d8:	e85ff06f          	j	8000725c <__memset+0x84>
    800073dc:	00400e93          	li	t4,4
    800073e0:	e7dff06f          	j	8000725c <__memset+0x84>
    800073e4:	00500e93          	li	t4,5
    800073e8:	e75ff06f          	j	8000725c <__memset+0x84>
    800073ec:	00600e93          	li	t4,6
    800073f0:	e6dff06f          	j	8000725c <__memset+0x84>

00000000800073f4 <__memmove>:
    800073f4:	ff010113          	addi	sp,sp,-16
    800073f8:	00813423          	sd	s0,8(sp)
    800073fc:	01010413          	addi	s0,sp,16
    80007400:	0e060863          	beqz	a2,800074f0 <__memmove+0xfc>
    80007404:	fff6069b          	addiw	a3,a2,-1
    80007408:	0006881b          	sext.w	a6,a3
    8000740c:	0ea5e863          	bltu	a1,a0,800074fc <__memmove+0x108>
    80007410:	00758713          	addi	a4,a1,7
    80007414:	00a5e7b3          	or	a5,a1,a0
    80007418:	40a70733          	sub	a4,a4,a0
    8000741c:	0077f793          	andi	a5,a5,7
    80007420:	00f73713          	sltiu	a4,a4,15
    80007424:	00174713          	xori	a4,a4,1
    80007428:	0017b793          	seqz	a5,a5
    8000742c:	00e7f7b3          	and	a5,a5,a4
    80007430:	10078863          	beqz	a5,80007540 <__memmove+0x14c>
    80007434:	00900793          	li	a5,9
    80007438:	1107f463          	bgeu	a5,a6,80007540 <__memmove+0x14c>
    8000743c:	0036581b          	srliw	a6,a2,0x3
    80007440:	fff8081b          	addiw	a6,a6,-1
    80007444:	02081813          	slli	a6,a6,0x20
    80007448:	01d85893          	srli	a7,a6,0x1d
    8000744c:	00858813          	addi	a6,a1,8
    80007450:	00058793          	mv	a5,a1
    80007454:	00050713          	mv	a4,a0
    80007458:	01088833          	add	a6,a7,a6
    8000745c:	0007b883          	ld	a7,0(a5)
    80007460:	00878793          	addi	a5,a5,8
    80007464:	00870713          	addi	a4,a4,8
    80007468:	ff173c23          	sd	a7,-8(a4)
    8000746c:	ff0798e3          	bne	a5,a6,8000745c <__memmove+0x68>
    80007470:	ff867713          	andi	a4,a2,-8
    80007474:	02071793          	slli	a5,a4,0x20
    80007478:	0207d793          	srli	a5,a5,0x20
    8000747c:	00f585b3          	add	a1,a1,a5
    80007480:	40e686bb          	subw	a3,a3,a4
    80007484:	00f507b3          	add	a5,a0,a5
    80007488:	06e60463          	beq	a2,a4,800074f0 <__memmove+0xfc>
    8000748c:	0005c703          	lbu	a4,0(a1)
    80007490:	00e78023          	sb	a4,0(a5)
    80007494:	04068e63          	beqz	a3,800074f0 <__memmove+0xfc>
    80007498:	0015c603          	lbu	a2,1(a1)
    8000749c:	00100713          	li	a4,1
    800074a0:	00c780a3          	sb	a2,1(a5)
    800074a4:	04e68663          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074a8:	0025c603          	lbu	a2,2(a1)
    800074ac:	00200713          	li	a4,2
    800074b0:	00c78123          	sb	a2,2(a5)
    800074b4:	02e68e63          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074b8:	0035c603          	lbu	a2,3(a1)
    800074bc:	00300713          	li	a4,3
    800074c0:	00c781a3          	sb	a2,3(a5)
    800074c4:	02e68663          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074c8:	0045c603          	lbu	a2,4(a1)
    800074cc:	00400713          	li	a4,4
    800074d0:	00c78223          	sb	a2,4(a5)
    800074d4:	00e68e63          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074d8:	0055c603          	lbu	a2,5(a1)
    800074dc:	00500713          	li	a4,5
    800074e0:	00c782a3          	sb	a2,5(a5)
    800074e4:	00e68663          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074e8:	0065c703          	lbu	a4,6(a1)
    800074ec:	00e78323          	sb	a4,6(a5)
    800074f0:	00813403          	ld	s0,8(sp)
    800074f4:	01010113          	addi	sp,sp,16
    800074f8:	00008067          	ret
    800074fc:	02061713          	slli	a4,a2,0x20
    80007500:	02075713          	srli	a4,a4,0x20
    80007504:	00e587b3          	add	a5,a1,a4
    80007508:	f0f574e3          	bgeu	a0,a5,80007410 <__memmove+0x1c>
    8000750c:	02069613          	slli	a2,a3,0x20
    80007510:	02065613          	srli	a2,a2,0x20
    80007514:	fff64613          	not	a2,a2
    80007518:	00e50733          	add	a4,a0,a4
    8000751c:	00c78633          	add	a2,a5,a2
    80007520:	fff7c683          	lbu	a3,-1(a5)
    80007524:	fff78793          	addi	a5,a5,-1
    80007528:	fff70713          	addi	a4,a4,-1
    8000752c:	00d70023          	sb	a3,0(a4)
    80007530:	fec798e3          	bne	a5,a2,80007520 <__memmove+0x12c>
    80007534:	00813403          	ld	s0,8(sp)
    80007538:	01010113          	addi	sp,sp,16
    8000753c:	00008067          	ret
    80007540:	02069713          	slli	a4,a3,0x20
    80007544:	02075713          	srli	a4,a4,0x20
    80007548:	00170713          	addi	a4,a4,1
    8000754c:	00e50733          	add	a4,a0,a4
    80007550:	00050793          	mv	a5,a0
    80007554:	0005c683          	lbu	a3,0(a1)
    80007558:	00178793          	addi	a5,a5,1
    8000755c:	00158593          	addi	a1,a1,1
    80007560:	fed78fa3          	sb	a3,-1(a5)
    80007564:	fee798e3          	bne	a5,a4,80007554 <__memmove+0x160>
    80007568:	f89ff06f          	j	800074f0 <__memmove+0xfc>
	...

Disassembly of section .kernel:

00000000800135c8 <copy_and_swap-0xa38>:
	...

0000000080014000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80014000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80014004:	00b29a63          	bne	t0,a1,80014018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80014008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8001400c:	fe029ae3          	bnez	t0,80014000 <copy_and_swap>
    li a0, 0               # Set return to success.
    80014010:	00000513          	li	a0,0
    jr ra                  # Return.
    80014014:	00008067          	ret

0000000080014018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80014018:	00100513          	li	a0,1
    8001401c:	00008067          	ret

0000000080014020 <_Z9mem_allocm>:
//

#include "../../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80014020:	ff010113          	addi	sp,sp,-16
    80014024:	00813423          	sd	s0,8(sp)
    80014028:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8001402c:	03f50513          	addi	a0,a0,63
    80014030:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80014034:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80014038:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    8001403c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80014040:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    80014044:	00813403          	ld	s0,8(sp)
    80014048:	01010113          	addi	sp,sp,16
    8001404c:	00008067          	ret

0000000080014050 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80014050:	ff010113          	addi	sp,sp,-16
    80014054:	00813423          	sd	s0,8(sp)
    80014058:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    8001405c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80014060:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80014064:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014068:	00050513          	mv	a0,a0

    return result;
}
    8001406c:	0005051b          	sext.w	a0,a0
    80014070:	00813403          	ld	s0,8(sp)
    80014074:	01010113          	addi	sp,sp,16
    80014078:	00008067          	ret

000000008001407c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    8001407c:	fd010113          	addi	sp,sp,-48
    80014080:	02113423          	sd	ra,40(sp)
    80014084:	02813023          	sd	s0,32(sp)
    80014088:	00913c23          	sd	s1,24(sp)
    8001408c:	01213823          	sd	s2,16(sp)
    80014090:	01313423          	sd	s3,8(sp)
    80014094:	03010413          	addi	s0,sp,48
    80014098:	00050493          	mv	s1,a0
    8001409c:	00058913          	mv	s2,a1
    800140a0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800140a4:	00001537          	lui	a0,0x1
    800140a8:	00000097          	auipc	ra,0x0
    800140ac:	f78080e7          	jalr	-136(ra) # 80014020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    800140b0:	04050263          	beqz	a0,800140f4 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800140b4:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800140b8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800140bc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800140c0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800140c4:	01100793          	li	a5,17
    800140c8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800140cc:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800140d0:	00050513          	mv	a0,a0

    return result;
    800140d4:	0005051b          	sext.w	a0,a0
}
    800140d8:	02813083          	ld	ra,40(sp)
    800140dc:	02013403          	ld	s0,32(sp)
    800140e0:	01813483          	ld	s1,24(sp)
    800140e4:	01013903          	ld	s2,16(sp)
    800140e8:	00813983          	ld	s3,8(sp)
    800140ec:	03010113          	addi	sp,sp,48
    800140f0:	00008067          	ret
        return -1;
    800140f4:	fff00513          	li	a0,-1
    800140f8:	fe1ff06f          	j	800140d8 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

00000000800140fc <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800140fc:	ff010113          	addi	sp,sp,-16
    80014100:	00813423          	sd	s0,8(sp)
    80014104:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80014108:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8001410c:	00000073          	ecall
}
    80014110:	00813403          	ld	s0,8(sp)
    80014114:	01010113          	addi	sp,sp,16
    80014118:	00008067          	ret

000000008001411c <_Z11thread_exitv>:

int thread_exit()
{
    8001411c:	ff010113          	addi	sp,sp,-16
    80014120:	00813423          	sd	s0,8(sp)
    80014124:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80014128:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    8001412c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014130:	00050513          	mv	a0,a0
    return result;
}
    80014134:	0005051b          	sext.w	a0,a0
    80014138:	00813403          	ld	s0,8(sp)
    8001413c:	01010113          	addi	sp,sp,16
    80014140:	00008067          	ret

0000000080014144 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80014144:	ff010113          	addi	sp,sp,-16
    80014148:	00813423          	sd	s0,8(sp)
    8001414c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80014150:	02059593          	slli	a1,a1,0x20
    80014154:	0205d593          	srli	a1,a1,0x20
    80014158:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8001415c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80014160:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80014164:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014168:	00050513          	mv	a0,a0
    return result;
}
    8001416c:	0005051b          	sext.w	a0,a0
    80014170:	00813403          	ld	s0,8(sp)
    80014174:	01010113          	addi	sp,sp,16
    80014178:	00008067          	ret

000000008001417c <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    8001417c:	ff010113          	addi	sp,sp,-16
    80014180:	00813423          	sd	s0,8(sp)
    80014184:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80014188:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8001418c:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80014190:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014194:	00050513          	mv	a0,a0
    return result;
}
    80014198:	0005051b          	sext.w	a0,a0
    8001419c:	00813403          	ld	s0,8(sp)
    800141a0:	01010113          	addi	sp,sp,16
    800141a4:	00008067          	ret

00000000800141a8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800141a8:	ff010113          	addi	sp,sp,-16
    800141ac:	00813423          	sd	s0,8(sp)
    800141b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800141b4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800141b8:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800141bc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800141c0:	00050513          	mv	a0,a0
    return result;
}
    800141c4:	0005051b          	sext.w	a0,a0
    800141c8:	00813403          	ld	s0,8(sp)
    800141cc:	01010113          	addi	sp,sp,16
    800141d0:	00008067          	ret

00000000800141d4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    800141d4:	ff010113          	addi	sp,sp,-16
    800141d8:	00813423          	sd	s0,8(sp)
    800141dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800141e0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800141e4:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800141e8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800141ec:	00050513          	mv	a0,a0
    return result;
}
    800141f0:	0005051b          	sext.w	a0,a0
    800141f4:	00813403          	ld	s0,8(sp)
    800141f8:	01010113          	addi	sp,sp,16
    800141fc:	00008067          	ret

0000000080014200 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80014200:	ff010113          	addi	sp,sp,-16
    80014204:	00813423          	sd	s0,8(sp)
    80014208:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8001420c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80014210:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80014214:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014218:	00050513          	mv	a0,a0
    return result;
}
    8001421c:	0005051b          	sext.w	a0,a0
    80014220:	00813403          	ld	s0,8(sp)
    80014224:	01010113          	addi	sp,sp,16
    80014228:	00008067          	ret

000000008001422c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8001422c:	ff010113          	addi	sp,sp,-16
    80014230:	00813423          	sd	s0,8(sp)
    80014234:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80014238:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8001423c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80014240:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014244:	00050513          	mv	a0,a0
    return result;
}
    80014248:	0005051b          	sext.w	a0,a0
    8001424c:	00813403          	ld	s0,8(sp)
    80014250:	01010113          	addi	sp,sp,16
    80014254:	00008067          	ret

0000000080014258 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80014258:	fd010113          	addi	sp,sp,-48
    8001425c:	02113423          	sd	ra,40(sp)
    80014260:	02813023          	sd	s0,32(sp)
    80014264:	00913c23          	sd	s1,24(sp)
    80014268:	01213823          	sd	s2,16(sp)
    8001426c:	01313423          	sd	s3,8(sp)
    80014270:	03010413          	addi	s0,sp,48
    80014274:	00050493          	mv	s1,a0
    80014278:	00058913          	mv	s2,a1
    8001427c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80014280:	00001537          	lui	a0,0x1
    80014284:	00000097          	auipc	ra,0x0
    80014288:	d9c080e7          	jalr	-612(ra) # 80014020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    8001428c:	04050263          	beqz	a0,800142d0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80014290:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80014294:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80014298:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8001429c:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800142a0:	01400793          	li	a5,20
    800142a4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800142a8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800142ac:	00050513          	mv	a0,a0
    return result;
    800142b0:	0005051b          	sext.w	a0,a0
}
    800142b4:	02813083          	ld	ra,40(sp)
    800142b8:	02013403          	ld	s0,32(sp)
    800142bc:	01813483          	ld	s1,24(sp)
    800142c0:	01013903          	ld	s2,16(sp)
    800142c4:	00813983          	ld	s3,8(sp)
    800142c8:	03010113          	addi	sp,sp,48
    800142cc:	00008067          	ret
        return -1;
    800142d0:	fff00513          	li	a0,-1
    800142d4:	fe1ff06f          	j	800142b4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800142d8 <_Z4getcv>:

char getc()
{
    800142d8:	ff010113          	addi	sp,sp,-16
    800142dc:	00813423          	sd	s0,8(sp)
    800142e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800142e4:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800142e8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800142ec:	00050513          	mv	a0,a0
    return (char)result;
}
    800142f0:	0ff57513          	andi	a0,a0,255
    800142f4:	00813403          	ld	s0,8(sp)
    800142f8:	01010113          	addi	sp,sp,16
    800142fc:	00008067          	ret

0000000080014300 <_Z4putcc>:

void putc(char c)
{
    80014300:	ff010113          	addi	sp,sp,-16
    80014304:	00813423          	sd	s0,8(sp)
    80014308:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8001430c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80014310:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80014314:	00000073          	ecall
}
    80014318:	00813403          	ld	s0,8(sp)
    8001431c:	01010113          	addi	sp,sp,16
    80014320:	00008067          	ret

0000000080014324 <_Z17thread_delete_pcbP7_thread>:
//    __asm__ volatile("mv %0, a0" : "=r"(result));
//    return (char)result;
//}

int thread_delete_pcb(thread_t handle)
{
    80014324:	ff010113          	addi	sp,sp,-16
    80014328:	00813423          	sd	s0,8(sp)
    8001432c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80014330:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80014334:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80014338:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8001433c:	00050513          	mv	a0,a0
    return (char)result;
}
    80014340:	0ff57513          	andi	a0,a0,255
    80014344:	00813403          	ld	s0,8(sp)
    80014348:	01010113          	addi	sp,sp,16
    8001434c:	00008067          	ret

0000000080014350 <_ZN7_threaddlEPv>:
//

#include "../../h/_thread.hpp"
#include "../../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80014350:	ff010113          	addi	sp,sp,-16
    80014354:	00113423          	sd	ra,8(sp)
    80014358:	00813023          	sd	s0,0(sp)
    8001435c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80014360:	00000097          	auipc	ra,0x0
    80014364:	fc4080e7          	jalr	-60(ra) # 80014324 <_Z17thread_delete_pcbP7_thread>
    80014368:	00813083          	ld	ra,8(sp)
    8001436c:	00013403          	ld	s0,0(sp)
    80014370:	01010113          	addi	sp,sp,16
    80014374:	00008067          	ret

0000000080014378 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80014378:	fe010113          	addi	sp,sp,-32
    8001437c:	00113c23          	sd	ra,24(sp)
    80014380:	00813823          	sd	s0,16(sp)
    80014384:	00913423          	sd	s1,8(sp)
    80014388:	02010413          	addi	s0,sp,32
    8001438c:	00050493          	mv	s1,a0
    LOCK();
    80014390:	00100613          	li	a2,1
    80014394:	00000593          	li	a1,0
    80014398:	00002517          	auipc	a0,0x2
    8001439c:	d2050513          	addi	a0,a0,-736 # 800160b8 <lockPrint>
    800143a0:	00000097          	auipc	ra,0x0
    800143a4:	c60080e7          	jalr	-928(ra) # 80014000 <copy_and_swap>
    800143a8:	fe0514e3          	bnez	a0,80014390 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800143ac:	0004c503          	lbu	a0,0(s1)
    800143b0:	00050a63          	beqz	a0,800143c4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800143b4:	00000097          	auipc	ra,0x0
    800143b8:	f4c080e7          	jalr	-180(ra) # 80014300 <_Z4putcc>
        string++;
    800143bc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800143c0:	fedff06f          	j	800143ac <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800143c4:	00000613          	li	a2,0
    800143c8:	00100593          	li	a1,1
    800143cc:	00002517          	auipc	a0,0x2
    800143d0:	cec50513          	addi	a0,a0,-788 # 800160b8 <lockPrint>
    800143d4:	00000097          	auipc	ra,0x0
    800143d8:	c2c080e7          	jalr	-980(ra) # 80014000 <copy_and_swap>
    800143dc:	fe0514e3          	bnez	a0,800143c4 <_Z11printStringPKc+0x4c>
}
    800143e0:	01813083          	ld	ra,24(sp)
    800143e4:	01013403          	ld	s0,16(sp)
    800143e8:	00813483          	ld	s1,8(sp)
    800143ec:	02010113          	addi	sp,sp,32
    800143f0:	00008067          	ret

00000000800143f4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800143f4:	fd010113          	addi	sp,sp,-48
    800143f8:	02113423          	sd	ra,40(sp)
    800143fc:	02813023          	sd	s0,32(sp)
    80014400:	00913c23          	sd	s1,24(sp)
    80014404:	01213823          	sd	s2,16(sp)
    80014408:	01313423          	sd	s3,8(sp)
    8001440c:	01413023          	sd	s4,0(sp)
    80014410:	03010413          	addi	s0,sp,48
    80014414:	00050993          	mv	s3,a0
    80014418:	00058a13          	mv	s4,a1
    LOCK();
    8001441c:	00100613          	li	a2,1
    80014420:	00000593          	li	a1,0
    80014424:	00002517          	auipc	a0,0x2
    80014428:	c9450513          	addi	a0,a0,-876 # 800160b8 <lockPrint>
    8001442c:	00000097          	auipc	ra,0x0
    80014430:	bd4080e7          	jalr	-1068(ra) # 80014000 <copy_and_swap>
    80014434:	fe0514e3          	bnez	a0,8001441c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80014438:	00000913          	li	s2,0
    8001443c:	00090493          	mv	s1,s2
    80014440:	0019091b          	addiw	s2,s2,1
    80014444:	03495a63          	bge	s2,s4,80014478 <_Z9getStringPci+0x84>
        cc = getc();
    80014448:	00000097          	auipc	ra,0x0
    8001444c:	e90080e7          	jalr	-368(ra) # 800142d8 <_Z4getcv>
        if(cc < 1)
    80014450:	02050463          	beqz	a0,80014478 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80014454:	009984b3          	add	s1,s3,s1
    80014458:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8001445c:	00a00793          	li	a5,10
    80014460:	00f50a63          	beq	a0,a5,80014474 <_Z9getStringPci+0x80>
    80014464:	00d00793          	li	a5,13
    80014468:	fcf51ae3          	bne	a0,a5,8001443c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8001446c:	00090493          	mv	s1,s2
    80014470:	0080006f          	j	80014478 <_Z9getStringPci+0x84>
    80014474:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80014478:	009984b3          	add	s1,s3,s1
    8001447c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80014480:	00000613          	li	a2,0
    80014484:	00100593          	li	a1,1
    80014488:	00002517          	auipc	a0,0x2
    8001448c:	c3050513          	addi	a0,a0,-976 # 800160b8 <lockPrint>
    80014490:	00000097          	auipc	ra,0x0
    80014494:	b70080e7          	jalr	-1168(ra) # 80014000 <copy_and_swap>
    80014498:	fe0514e3          	bnez	a0,80014480 <_Z9getStringPci+0x8c>
    return buf;
}
    8001449c:	00098513          	mv	a0,s3
    800144a0:	02813083          	ld	ra,40(sp)
    800144a4:	02013403          	ld	s0,32(sp)
    800144a8:	01813483          	ld	s1,24(sp)
    800144ac:	01013903          	ld	s2,16(sp)
    800144b0:	00813983          	ld	s3,8(sp)
    800144b4:	00013a03          	ld	s4,0(sp)
    800144b8:	03010113          	addi	sp,sp,48
    800144bc:	00008067          	ret

00000000800144c0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800144c0:	ff010113          	addi	sp,sp,-16
    800144c4:	00813423          	sd	s0,8(sp)
    800144c8:	01010413          	addi	s0,sp,16
    800144cc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800144d0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800144d4:	0006c603          	lbu	a2,0(a3)
    800144d8:	fd06071b          	addiw	a4,a2,-48
    800144dc:	0ff77713          	andi	a4,a4,255
    800144e0:	00900793          	li	a5,9
    800144e4:	02e7e063          	bltu	a5,a4,80014504 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800144e8:	0025179b          	slliw	a5,a0,0x2
    800144ec:	00a787bb          	addw	a5,a5,a0
    800144f0:	0017979b          	slliw	a5,a5,0x1
    800144f4:	00168693          	addi	a3,a3,1
    800144f8:	00c787bb          	addw	a5,a5,a2
    800144fc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80014500:	fd5ff06f          	j	800144d4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80014504:	00813403          	ld	s0,8(sp)
    80014508:	01010113          	addi	sp,sp,16
    8001450c:	00008067          	ret

0000000080014510 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80014510:	fc010113          	addi	sp,sp,-64
    80014514:	02113c23          	sd	ra,56(sp)
    80014518:	02813823          	sd	s0,48(sp)
    8001451c:	02913423          	sd	s1,40(sp)
    80014520:	03213023          	sd	s2,32(sp)
    80014524:	01313c23          	sd	s3,24(sp)
    80014528:	04010413          	addi	s0,sp,64
    8001452c:	00050493          	mv	s1,a0
    80014530:	00058913          	mv	s2,a1
    80014534:	00060993          	mv	s3,a2
    LOCK();
    80014538:	00100613          	li	a2,1
    8001453c:	00000593          	li	a1,0
    80014540:	00002517          	auipc	a0,0x2
    80014544:	b7850513          	addi	a0,a0,-1160 # 800160b8 <lockPrint>
    80014548:	00000097          	auipc	ra,0x0
    8001454c:	ab8080e7          	jalr	-1352(ra) # 80014000 <copy_and_swap>
    80014550:	fe0514e3          	bnez	a0,80014538 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80014554:	00098463          	beqz	s3,8001455c <_Z8printIntiii+0x4c>
    80014558:	0804c463          	bltz	s1,800145e0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8001455c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80014560:	00000593          	li	a1,0
    }

    i = 0;
    80014564:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80014568:	0009079b          	sext.w	a5,s2
    8001456c:	0325773b          	remuw	a4,a0,s2
    80014570:	00048613          	mv	a2,s1
    80014574:	0014849b          	addiw	s1,s1,1
    80014578:	02071693          	slli	a3,a4,0x20
    8001457c:	0206d693          	srli	a3,a3,0x20
    80014580:	00002717          	auipc	a4,0x2
    80014584:	aa870713          	addi	a4,a4,-1368 # 80016028 <digits>
    80014588:	00d70733          	add	a4,a4,a3
    8001458c:	00074683          	lbu	a3,0(a4)
    80014590:	fd040713          	addi	a4,s0,-48
    80014594:	00c70733          	add	a4,a4,a2
    80014598:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8001459c:	0005071b          	sext.w	a4,a0
    800145a0:	0325553b          	divuw	a0,a0,s2
    800145a4:	fcf772e3          	bgeu	a4,a5,80014568 <_Z8printIntiii+0x58>
    if(neg)
    800145a8:	00058c63          	beqz	a1,800145c0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800145ac:	fd040793          	addi	a5,s0,-48
    800145b0:	009784b3          	add	s1,a5,s1
    800145b4:	02d00793          	li	a5,45
    800145b8:	fef48823          	sb	a5,-16(s1)
    800145bc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800145c0:	fff4849b          	addiw	s1,s1,-1
    800145c4:	0204c463          	bltz	s1,800145ec <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800145c8:	fd040793          	addi	a5,s0,-48
    800145cc:	009787b3          	add	a5,a5,s1
    800145d0:	ff07c503          	lbu	a0,-16(a5)
    800145d4:	00000097          	auipc	ra,0x0
    800145d8:	d2c080e7          	jalr	-724(ra) # 80014300 <_Z4putcc>
    800145dc:	fe5ff06f          	j	800145c0 <_Z8printIntiii+0xb0>
        x = -xx;
    800145e0:	4090053b          	negw	a0,s1
        neg = 1;
    800145e4:	00100593          	li	a1,1
        x = -xx;
    800145e8:	f7dff06f          	j	80014564 <_Z8printIntiii+0x54>

    UNLOCK();
    800145ec:	00000613          	li	a2,0
    800145f0:	00100593          	li	a1,1
    800145f4:	00002517          	auipc	a0,0x2
    800145f8:	ac450513          	addi	a0,a0,-1340 # 800160b8 <lockPrint>
    800145fc:	00000097          	auipc	ra,0x0
    80014600:	a04080e7          	jalr	-1532(ra) # 80014000 <copy_and_swap>
    80014604:	fe0514e3          	bnez	a0,800145ec <_Z8printIntiii+0xdc>
}
    80014608:	03813083          	ld	ra,56(sp)
    8001460c:	03013403          	ld	s0,48(sp)
    80014610:	02813483          	ld	s1,40(sp)
    80014614:	02013903          	ld	s2,32(sp)
    80014618:	01813983          	ld	s3,24(sp)
    8001461c:	04010113          	addi	sp,sp,64
    80014620:	00008067          	ret

0000000080014624 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80014624:	fd010113          	addi	sp,sp,-48
    80014628:	02113423          	sd	ra,40(sp)
    8001462c:	02813023          	sd	s0,32(sp)
    80014630:	00913c23          	sd	s1,24(sp)
    80014634:	01213823          	sd	s2,16(sp)
    80014638:	01313423          	sd	s3,8(sp)
    8001463c:	03010413          	addi	s0,sp,48
    80014640:	00050493          	mv	s1,a0
    80014644:	00058993          	mv	s3,a1
    80014648:	0015879b          	addiw	a5,a1,1
    8001464c:	0007851b          	sext.w	a0,a5
    80014650:	00f4a023          	sw	a5,0(s1)
    80014654:	0004a823          	sw	zero,16(s1)
    80014658:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8001465c:	00251513          	slli	a0,a0,0x2
    80014660:	00000097          	auipc	ra,0x0
    80014664:	9c0080e7          	jalr	-1600(ra) # 80014020 <_Z9mem_allocm>
    80014668:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8001466c:	01000513          	li	a0,16
    80014670:	00001097          	auipc	ra,0x1
    80014674:	8cc080e7          	jalr	-1844(ra) # 80014f3c <_Znwm>
    80014678:	00050913          	mv	s2,a0
    8001467c:	00050863          	beqz	a0,8001468c <_ZN9BufferCPPC1Ei+0x68>
    80014680:	00000593          	li	a1,0
    80014684:	00001097          	auipc	ra,0x1
    80014688:	b0c080e7          	jalr	-1268(ra) # 80015190 <_ZN9SemaphoreC1Ej>
    8001468c:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80014690:	01000513          	li	a0,16
    80014694:	00001097          	auipc	ra,0x1
    80014698:	8a8080e7          	jalr	-1880(ra) # 80014f3c <_Znwm>
    8001469c:	00050913          	mv	s2,a0
    800146a0:	00050863          	beqz	a0,800146b0 <_ZN9BufferCPPC1Ei+0x8c>
    800146a4:	00098593          	mv	a1,s3
    800146a8:	00001097          	auipc	ra,0x1
    800146ac:	ae8080e7          	jalr	-1304(ra) # 80015190 <_ZN9SemaphoreC1Ej>
    800146b0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800146b4:	01000513          	li	a0,16
    800146b8:	00001097          	auipc	ra,0x1
    800146bc:	884080e7          	jalr	-1916(ra) # 80014f3c <_Znwm>
    800146c0:	00050913          	mv	s2,a0
    800146c4:	00050863          	beqz	a0,800146d4 <_ZN9BufferCPPC1Ei+0xb0>
    800146c8:	00100593          	li	a1,1
    800146cc:	00001097          	auipc	ra,0x1
    800146d0:	ac4080e7          	jalr	-1340(ra) # 80015190 <_ZN9SemaphoreC1Ej>
    800146d4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800146d8:	01000513          	li	a0,16
    800146dc:	00001097          	auipc	ra,0x1
    800146e0:	860080e7          	jalr	-1952(ra) # 80014f3c <_Znwm>
    800146e4:	00050913          	mv	s2,a0
    800146e8:	00050863          	beqz	a0,800146f8 <_ZN9BufferCPPC1Ei+0xd4>
    800146ec:	00100593          	li	a1,1
    800146f0:	00001097          	auipc	ra,0x1
    800146f4:	aa0080e7          	jalr	-1376(ra) # 80015190 <_ZN9SemaphoreC1Ej>
    800146f8:	0324b823          	sd	s2,48(s1)
}
    800146fc:	02813083          	ld	ra,40(sp)
    80014700:	02013403          	ld	s0,32(sp)
    80014704:	01813483          	ld	s1,24(sp)
    80014708:	01013903          	ld	s2,16(sp)
    8001470c:	00813983          	ld	s3,8(sp)
    80014710:	03010113          	addi	sp,sp,48
    80014714:	00008067          	ret
    80014718:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8001471c:	00090513          	mv	a0,s2
    80014720:	00001097          	auipc	ra,0x1
    80014724:	844080e7          	jalr	-1980(ra) # 80014f64 <_ZdlPv>
    80014728:	00048513          	mv	a0,s1
    8001472c:	ffffd097          	auipc	ra,0xffffd
    80014730:	43c080e7          	jalr	1084(ra) # 80011b68 <_Unwind_Resume>
    80014734:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80014738:	00090513          	mv	a0,s2
    8001473c:	00001097          	auipc	ra,0x1
    80014740:	828080e7          	jalr	-2008(ra) # 80014f64 <_ZdlPv>
    80014744:	00048513          	mv	a0,s1
    80014748:	ffffd097          	auipc	ra,0xffffd
    8001474c:	420080e7          	jalr	1056(ra) # 80011b68 <_Unwind_Resume>
    80014750:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80014754:	00090513          	mv	a0,s2
    80014758:	00001097          	auipc	ra,0x1
    8001475c:	80c080e7          	jalr	-2036(ra) # 80014f64 <_ZdlPv>
    80014760:	00048513          	mv	a0,s1
    80014764:	ffffd097          	auipc	ra,0xffffd
    80014768:	404080e7          	jalr	1028(ra) # 80011b68 <_Unwind_Resume>
    8001476c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80014770:	00090513          	mv	a0,s2
    80014774:	00000097          	auipc	ra,0x0
    80014778:	7f0080e7          	jalr	2032(ra) # 80014f64 <_ZdlPv>
    8001477c:	00048513          	mv	a0,s1
    80014780:	ffffd097          	auipc	ra,0xffffd
    80014784:	3e8080e7          	jalr	1000(ra) # 80011b68 <_Unwind_Resume>

0000000080014788 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80014788:	fe010113          	addi	sp,sp,-32
    8001478c:	00113c23          	sd	ra,24(sp)
    80014790:	00813823          	sd	s0,16(sp)
    80014794:	00913423          	sd	s1,8(sp)
    80014798:	01213023          	sd	s2,0(sp)
    8001479c:	02010413          	addi	s0,sp,32
    800147a0:	00050493          	mv	s1,a0
    800147a4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800147a8:	01853503          	ld	a0,24(a0)
    800147ac:	00001097          	auipc	ra,0x1
    800147b0:	9ac080e7          	jalr	-1620(ra) # 80015158 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800147b4:	0304b503          	ld	a0,48(s1)
    800147b8:	00001097          	auipc	ra,0x1
    800147bc:	9a0080e7          	jalr	-1632(ra) # 80015158 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800147c0:	0084b783          	ld	a5,8(s1)
    800147c4:	0144a703          	lw	a4,20(s1)
    800147c8:	00271713          	slli	a4,a4,0x2
    800147cc:	00e787b3          	add	a5,a5,a4
    800147d0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800147d4:	0144a783          	lw	a5,20(s1)
    800147d8:	0017879b          	addiw	a5,a5,1
    800147dc:	0004a703          	lw	a4,0(s1)
    800147e0:	02e7e7bb          	remw	a5,a5,a4
    800147e4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800147e8:	0304b503          	ld	a0,48(s1)
    800147ec:	00001097          	auipc	ra,0x1
    800147f0:	9f0080e7          	jalr	-1552(ra) # 800151dc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800147f4:	0204b503          	ld	a0,32(s1)
    800147f8:	00001097          	auipc	ra,0x1
    800147fc:	9e4080e7          	jalr	-1564(ra) # 800151dc <_ZN9Semaphore6signalEv>

}
    80014800:	01813083          	ld	ra,24(sp)
    80014804:	01013403          	ld	s0,16(sp)
    80014808:	00813483          	ld	s1,8(sp)
    8001480c:	00013903          	ld	s2,0(sp)
    80014810:	02010113          	addi	sp,sp,32
    80014814:	00008067          	ret

0000000080014818 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80014818:	fe010113          	addi	sp,sp,-32
    8001481c:	00113c23          	sd	ra,24(sp)
    80014820:	00813823          	sd	s0,16(sp)
    80014824:	00913423          	sd	s1,8(sp)
    80014828:	01213023          	sd	s2,0(sp)
    8001482c:	02010413          	addi	s0,sp,32
    80014830:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80014834:	02053503          	ld	a0,32(a0)
    80014838:	00001097          	auipc	ra,0x1
    8001483c:	920080e7          	jalr	-1760(ra) # 80015158 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80014840:	0284b503          	ld	a0,40(s1)
    80014844:	00001097          	auipc	ra,0x1
    80014848:	914080e7          	jalr	-1772(ra) # 80015158 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8001484c:	0084b703          	ld	a4,8(s1)
    80014850:	0104a783          	lw	a5,16(s1)
    80014854:	00279693          	slli	a3,a5,0x2
    80014858:	00d70733          	add	a4,a4,a3
    8001485c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80014860:	0017879b          	addiw	a5,a5,1
    80014864:	0004a703          	lw	a4,0(s1)
    80014868:	02e7e7bb          	remw	a5,a5,a4
    8001486c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80014870:	0284b503          	ld	a0,40(s1)
    80014874:	00001097          	auipc	ra,0x1
    80014878:	968080e7          	jalr	-1688(ra) # 800151dc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8001487c:	0184b503          	ld	a0,24(s1)
    80014880:	00001097          	auipc	ra,0x1
    80014884:	95c080e7          	jalr	-1700(ra) # 800151dc <_ZN9Semaphore6signalEv>

    return ret;
}
    80014888:	00090513          	mv	a0,s2
    8001488c:	01813083          	ld	ra,24(sp)
    80014890:	01013403          	ld	s0,16(sp)
    80014894:	00813483          	ld	s1,8(sp)
    80014898:	00013903          	ld	s2,0(sp)
    8001489c:	02010113          	addi	sp,sp,32
    800148a0:	00008067          	ret

00000000800148a4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800148a4:	fe010113          	addi	sp,sp,-32
    800148a8:	00113c23          	sd	ra,24(sp)
    800148ac:	00813823          	sd	s0,16(sp)
    800148b0:	00913423          	sd	s1,8(sp)
    800148b4:	01213023          	sd	s2,0(sp)
    800148b8:	02010413          	addi	s0,sp,32
    800148bc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800148c0:	02853503          	ld	a0,40(a0)
    800148c4:	00001097          	auipc	ra,0x1
    800148c8:	894080e7          	jalr	-1900(ra) # 80015158 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800148cc:	0304b503          	ld	a0,48(s1)
    800148d0:	00001097          	auipc	ra,0x1
    800148d4:	888080e7          	jalr	-1912(ra) # 80015158 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800148d8:	0144a783          	lw	a5,20(s1)
    800148dc:	0104a903          	lw	s2,16(s1)
    800148e0:	0327ce63          	blt	a5,s2,8001491c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800148e4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800148e8:	0304b503          	ld	a0,48(s1)
    800148ec:	00001097          	auipc	ra,0x1
    800148f0:	8f0080e7          	jalr	-1808(ra) # 800151dc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800148f4:	0284b503          	ld	a0,40(s1)
    800148f8:	00001097          	auipc	ra,0x1
    800148fc:	8e4080e7          	jalr	-1820(ra) # 800151dc <_ZN9Semaphore6signalEv>

    return ret;
}
    80014900:	00090513          	mv	a0,s2
    80014904:	01813083          	ld	ra,24(sp)
    80014908:	01013403          	ld	s0,16(sp)
    8001490c:	00813483          	ld	s1,8(sp)
    80014910:	00013903          	ld	s2,0(sp)
    80014914:	02010113          	addi	sp,sp,32
    80014918:	00008067          	ret
        ret = cap - head + tail;
    8001491c:	0004a703          	lw	a4,0(s1)
    80014920:	4127093b          	subw	s2,a4,s2
    80014924:	00f9093b          	addw	s2,s2,a5
    80014928:	fc1ff06f          	j	800148e8 <_ZN9BufferCPP6getCntEv+0x44>

000000008001492c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8001492c:	fe010113          	addi	sp,sp,-32
    80014930:	00113c23          	sd	ra,24(sp)
    80014934:	00813823          	sd	s0,16(sp)
    80014938:	00913423          	sd	s1,8(sp)
    8001493c:	02010413          	addi	s0,sp,32
    80014940:	00050493          	mv	s1,a0
    Console::putc('\n');
    80014944:	00a00513          	li	a0,10
    80014948:	00001097          	auipc	ra,0x1
    8001494c:	8f4080e7          	jalr	-1804(ra) # 8001523c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80014950:	00001517          	auipc	a0,0x1
    80014954:	6b050513          	addi	a0,a0,1712 # 80016000 <kernelDataStart>
    80014958:	00000097          	auipc	ra,0x0
    8001495c:	a20080e7          	jalr	-1504(ra) # 80014378 <_Z11printStringPKc>
    while (getCnt()) {
    80014960:	00048513          	mv	a0,s1
    80014964:	00000097          	auipc	ra,0x0
    80014968:	f40080e7          	jalr	-192(ra) # 800148a4 <_ZN9BufferCPP6getCntEv>
    8001496c:	02050c63          	beqz	a0,800149a4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80014970:	0084b783          	ld	a5,8(s1)
    80014974:	0104a703          	lw	a4,16(s1)
    80014978:	00271713          	slli	a4,a4,0x2
    8001497c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80014980:	0007c503          	lbu	a0,0(a5)
    80014984:	00001097          	auipc	ra,0x1
    80014988:	8b8080e7          	jalr	-1864(ra) # 8001523c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8001498c:	0104a783          	lw	a5,16(s1)
    80014990:	0017879b          	addiw	a5,a5,1
    80014994:	0004a703          	lw	a4,0(s1)
    80014998:	02e7e7bb          	remw	a5,a5,a4
    8001499c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800149a0:	fc1ff06f          	j	80014960 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800149a4:	02100513          	li	a0,33
    800149a8:	00001097          	auipc	ra,0x1
    800149ac:	894080e7          	jalr	-1900(ra) # 8001523c <_ZN7Console4putcEc>
    Console::putc('\n');
    800149b0:	00a00513          	li	a0,10
    800149b4:	00001097          	auipc	ra,0x1
    800149b8:	888080e7          	jalr	-1912(ra) # 8001523c <_ZN7Console4putcEc>
    mem_free(buffer);
    800149bc:	0084b503          	ld	a0,8(s1)
    800149c0:	fffff097          	auipc	ra,0xfffff
    800149c4:	690080e7          	jalr	1680(ra) # 80014050 <_Z8mem_freePv>
    delete itemAvailable;
    800149c8:	0204b503          	ld	a0,32(s1)
    800149cc:	00050863          	beqz	a0,800149dc <_ZN9BufferCPPD1Ev+0xb0>
    800149d0:	00053783          	ld	a5,0(a0)
    800149d4:	0087b783          	ld	a5,8(a5)
    800149d8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800149dc:	0184b503          	ld	a0,24(s1)
    800149e0:	00050863          	beqz	a0,800149f0 <_ZN9BufferCPPD1Ev+0xc4>
    800149e4:	00053783          	ld	a5,0(a0)
    800149e8:	0087b783          	ld	a5,8(a5)
    800149ec:	000780e7          	jalr	a5
    delete mutexTail;
    800149f0:	0304b503          	ld	a0,48(s1)
    800149f4:	00050863          	beqz	a0,80014a04 <_ZN9BufferCPPD1Ev+0xd8>
    800149f8:	00053783          	ld	a5,0(a0)
    800149fc:	0087b783          	ld	a5,8(a5)
    80014a00:	000780e7          	jalr	a5
    delete mutexHead;
    80014a04:	0284b503          	ld	a0,40(s1)
    80014a08:	00050863          	beqz	a0,80014a18 <_ZN9BufferCPPD1Ev+0xec>
    80014a0c:	00053783          	ld	a5,0(a0)
    80014a10:	0087b783          	ld	a5,8(a5)
    80014a14:	000780e7          	jalr	a5
}
    80014a18:	01813083          	ld	ra,24(sp)
    80014a1c:	01013403          	ld	s0,16(sp)
    80014a20:	00813483          	ld	s1,8(sp)
    80014a24:	02010113          	addi	sp,sp,32
    80014a28:	00008067          	ret

0000000080014a2c <_Z9sleepyRunPv>:

#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80014a2c:	fe010113          	addi	sp,sp,-32
    80014a30:	00113c23          	sd	ra,24(sp)
    80014a34:	00813823          	sd	s0,16(sp)
    80014a38:	00913423          	sd	s1,8(sp)
    80014a3c:	01213023          	sd	s2,0(sp)
    80014a40:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80014a44:	00053903          	ld	s2,0(a0)
    int i = 6;
    80014a48:	00600493          	li	s1,6
    while (--i > 0) {
    80014a4c:	fff4849b          	addiw	s1,s1,-1
    80014a50:	04905463          	blez	s1,80014a98 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80014a54:	00001517          	auipc	a0,0x1
    80014a58:	5c450513          	addi	a0,a0,1476 # 80016018 <kernelDataStart+0x18>
    80014a5c:	00000097          	auipc	ra,0x0
    80014a60:	91c080e7          	jalr	-1764(ra) # 80014378 <_Z11printStringPKc>
        printInt(sleep_time);
    80014a64:	00000613          	li	a2,0
    80014a68:	00a00593          	li	a1,10
    80014a6c:	0009051b          	sext.w	a0,s2
    80014a70:	00000097          	auipc	ra,0x0
    80014a74:	aa0080e7          	jalr	-1376(ra) # 80014510 <_Z8printIntiii>
        printString(" !\n");
    80014a78:	00001517          	auipc	a0,0x1
    80014a7c:	5a850513          	addi	a0,a0,1448 # 80016020 <kernelDataStart+0x20>
    80014a80:	00000097          	auipc	ra,0x0
    80014a84:	8f8080e7          	jalr	-1800(ra) # 80014378 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80014a88:	00090513          	mv	a0,s2
    80014a8c:	fffff097          	auipc	ra,0xfffff
    80014a90:	774080e7          	jalr	1908(ra) # 80014200 <_Z10time_sleepm>
    while (--i > 0) {
    80014a94:	fb9ff06f          	j	80014a4c <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80014a98:	00a00793          	li	a5,10
    80014a9c:	02f95933          	divu	s2,s2,a5
    80014aa0:	fff90913          	addi	s2,s2,-1
    80014aa4:	00001797          	auipc	a5,0x1
    80014aa8:	61c78793          	addi	a5,a5,1564 # 800160c0 <finished>
    80014aac:	01278933          	add	s2,a5,s2
    80014ab0:	00100793          	li	a5,1
    80014ab4:	00f90023          	sb	a5,0(s2)
}
    80014ab8:	01813083          	ld	ra,24(sp)
    80014abc:	01013403          	ld	s0,16(sp)
    80014ac0:	00813483          	ld	s1,8(sp)
    80014ac4:	00013903          	ld	s2,0(sp)
    80014ac8:	02010113          	addi	sp,sp,32
    80014acc:	00008067          	ret

0000000080014ad0 <_Z12testSleepingv>:

void testSleeping() {
    80014ad0:	fc010113          	addi	sp,sp,-64
    80014ad4:	02113c23          	sd	ra,56(sp)
    80014ad8:	02813823          	sd	s0,48(sp)
    80014adc:	02913423          	sd	s1,40(sp)
    80014ae0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80014ae4:	00a00793          	li	a5,10
    80014ae8:	fcf43823          	sd	a5,-48(s0)
    80014aec:	01400793          	li	a5,20
    80014af0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80014af4:	00000493          	li	s1,0
    80014af8:	02c0006f          	j	80014b24 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80014afc:	00349793          	slli	a5,s1,0x3
    80014b00:	fd040613          	addi	a2,s0,-48
    80014b04:	00f60633          	add	a2,a2,a5
    80014b08:	00000597          	auipc	a1,0x0
    80014b0c:	f2458593          	addi	a1,a1,-220 # 80014a2c <_Z9sleepyRunPv>
    80014b10:	fc040513          	addi	a0,s0,-64
    80014b14:	00f50533          	add	a0,a0,a5
    80014b18:	fffff097          	auipc	ra,0xfffff
    80014b1c:	564080e7          	jalr	1380(ra) # 8001407c <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80014b20:	0014849b          	addiw	s1,s1,1
    80014b24:	00100793          	li	a5,1
    80014b28:	fc97dae3          	bge	a5,s1,80014afc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80014b2c:	00001797          	auipc	a5,0x1
    80014b30:	5947c783          	lbu	a5,1428(a5) # 800160c0 <finished>
    80014b34:	fe078ce3          	beqz	a5,80014b2c <_Z12testSleepingv+0x5c>
    80014b38:	00001797          	auipc	a5,0x1
    80014b3c:	5897c783          	lbu	a5,1417(a5) # 800160c1 <finished+0x1>
    80014b40:	fe0786e3          	beqz	a5,80014b2c <_Z12testSleepingv+0x5c>
}
    80014b44:	03813083          	ld	ra,56(sp)
    80014b48:	03013403          	ld	s0,48(sp)
    80014b4c:	02813483          	ld	s1,40(sp)
    80014b50:	04010113          	addi	sp,sp,64
    80014b54:	00008067          	ret

0000000080014b58 <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

//#include "test1OS2.hpp"

void userMain()
{
    80014b58:	ff010113          	addi	sp,sp,-16
    80014b5c:	00813423          	sd	s0,8(sp)
    80014b60:	01010413          	addi	s0,sp,16

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //userMainTest();
    80014b64:	00813403          	ld	s0,8(sp)
    80014b68:	01010113          	addi	sp,sp,16
    80014b6c:	00008067          	ret

0000000080014b70 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80014b70:	fe010113          	addi	sp,sp,-32
    80014b74:	00113c23          	sd	ra,24(sp)
    80014b78:	00813823          	sd	s0,16(sp)
    80014b7c:	00913423          	sd	s1,8(sp)
    80014b80:	01213023          	sd	s2,0(sp)
    80014b84:	02010413          	addi	s0,sp,32
    80014b88:	00050493          	mv	s1,a0
    80014b8c:	00058913          	mv	s2,a1
    80014b90:	0015879b          	addiw	a5,a1,1
    80014b94:	0007851b          	sext.w	a0,a5
    80014b98:	00f4a023          	sw	a5,0(s1)
    80014b9c:	0004a823          	sw	zero,16(s1)
    80014ba0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80014ba4:	00251513          	slli	a0,a0,0x2
    80014ba8:	fffff097          	auipc	ra,0xfffff
    80014bac:	478080e7          	jalr	1144(ra) # 80014020 <_Z9mem_allocm>
    80014bb0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80014bb4:	00000593          	li	a1,0
    80014bb8:	02048513          	addi	a0,s1,32
    80014bbc:	fffff097          	auipc	ra,0xfffff
    80014bc0:	588080e7          	jalr	1416(ra) # 80014144 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80014bc4:	00090593          	mv	a1,s2
    80014bc8:	01848513          	addi	a0,s1,24
    80014bcc:	fffff097          	auipc	ra,0xfffff
    80014bd0:	578080e7          	jalr	1400(ra) # 80014144 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80014bd4:	00100593          	li	a1,1
    80014bd8:	02848513          	addi	a0,s1,40
    80014bdc:	fffff097          	auipc	ra,0xfffff
    80014be0:	568080e7          	jalr	1384(ra) # 80014144 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80014be4:	00100593          	li	a1,1
    80014be8:	03048513          	addi	a0,s1,48
    80014bec:	fffff097          	auipc	ra,0xfffff
    80014bf0:	558080e7          	jalr	1368(ra) # 80014144 <_Z8sem_openPP4_semj>
}
    80014bf4:	01813083          	ld	ra,24(sp)
    80014bf8:	01013403          	ld	s0,16(sp)
    80014bfc:	00813483          	ld	s1,8(sp)
    80014c00:	00013903          	ld	s2,0(sp)
    80014c04:	02010113          	addi	sp,sp,32
    80014c08:	00008067          	ret

0000000080014c0c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80014c0c:	fe010113          	addi	sp,sp,-32
    80014c10:	00113c23          	sd	ra,24(sp)
    80014c14:	00813823          	sd	s0,16(sp)
    80014c18:	00913423          	sd	s1,8(sp)
    80014c1c:	01213023          	sd	s2,0(sp)
    80014c20:	02010413          	addi	s0,sp,32
    80014c24:	00050493          	mv	s1,a0
    80014c28:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80014c2c:	01853503          	ld	a0,24(a0)
    80014c30:	fffff097          	auipc	ra,0xfffff
    80014c34:	578080e7          	jalr	1400(ra) # 800141a8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80014c38:	0304b503          	ld	a0,48(s1)
    80014c3c:	fffff097          	auipc	ra,0xfffff
    80014c40:	56c080e7          	jalr	1388(ra) # 800141a8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80014c44:	0084b783          	ld	a5,8(s1)
    80014c48:	0144a703          	lw	a4,20(s1)
    80014c4c:	00271713          	slli	a4,a4,0x2
    80014c50:	00e787b3          	add	a5,a5,a4
    80014c54:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80014c58:	0144a783          	lw	a5,20(s1)
    80014c5c:	0017879b          	addiw	a5,a5,1
    80014c60:	0004a703          	lw	a4,0(s1)
    80014c64:	02e7e7bb          	remw	a5,a5,a4
    80014c68:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80014c6c:	0304b503          	ld	a0,48(s1)
    80014c70:	fffff097          	auipc	ra,0xfffff
    80014c74:	564080e7          	jalr	1380(ra) # 800141d4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80014c78:	0204b503          	ld	a0,32(s1)
    80014c7c:	fffff097          	auipc	ra,0xfffff
    80014c80:	558080e7          	jalr	1368(ra) # 800141d4 <_Z10sem_signalP4_sem>

}
    80014c84:	01813083          	ld	ra,24(sp)
    80014c88:	01013403          	ld	s0,16(sp)
    80014c8c:	00813483          	ld	s1,8(sp)
    80014c90:	00013903          	ld	s2,0(sp)
    80014c94:	02010113          	addi	sp,sp,32
    80014c98:	00008067          	ret

0000000080014c9c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80014c9c:	fe010113          	addi	sp,sp,-32
    80014ca0:	00113c23          	sd	ra,24(sp)
    80014ca4:	00813823          	sd	s0,16(sp)
    80014ca8:	00913423          	sd	s1,8(sp)
    80014cac:	01213023          	sd	s2,0(sp)
    80014cb0:	02010413          	addi	s0,sp,32
    80014cb4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80014cb8:	02053503          	ld	a0,32(a0)
    80014cbc:	fffff097          	auipc	ra,0xfffff
    80014cc0:	4ec080e7          	jalr	1260(ra) # 800141a8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80014cc4:	0284b503          	ld	a0,40(s1)
    80014cc8:	fffff097          	auipc	ra,0xfffff
    80014ccc:	4e0080e7          	jalr	1248(ra) # 800141a8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80014cd0:	0084b703          	ld	a4,8(s1)
    80014cd4:	0104a783          	lw	a5,16(s1)
    80014cd8:	00279693          	slli	a3,a5,0x2
    80014cdc:	00d70733          	add	a4,a4,a3
    80014ce0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80014ce4:	0017879b          	addiw	a5,a5,1
    80014ce8:	0004a703          	lw	a4,0(s1)
    80014cec:	02e7e7bb          	remw	a5,a5,a4
    80014cf0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80014cf4:	0284b503          	ld	a0,40(s1)
    80014cf8:	fffff097          	auipc	ra,0xfffff
    80014cfc:	4dc080e7          	jalr	1244(ra) # 800141d4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80014d00:	0184b503          	ld	a0,24(s1)
    80014d04:	fffff097          	auipc	ra,0xfffff
    80014d08:	4d0080e7          	jalr	1232(ra) # 800141d4 <_Z10sem_signalP4_sem>

    return ret;
}
    80014d0c:	00090513          	mv	a0,s2
    80014d10:	01813083          	ld	ra,24(sp)
    80014d14:	01013403          	ld	s0,16(sp)
    80014d18:	00813483          	ld	s1,8(sp)
    80014d1c:	00013903          	ld	s2,0(sp)
    80014d20:	02010113          	addi	sp,sp,32
    80014d24:	00008067          	ret

0000000080014d28 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80014d28:	fe010113          	addi	sp,sp,-32
    80014d2c:	00113c23          	sd	ra,24(sp)
    80014d30:	00813823          	sd	s0,16(sp)
    80014d34:	00913423          	sd	s1,8(sp)
    80014d38:	01213023          	sd	s2,0(sp)
    80014d3c:	02010413          	addi	s0,sp,32
    80014d40:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80014d44:	02853503          	ld	a0,40(a0)
    80014d48:	fffff097          	auipc	ra,0xfffff
    80014d4c:	460080e7          	jalr	1120(ra) # 800141a8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80014d50:	0304b503          	ld	a0,48(s1)
    80014d54:	fffff097          	auipc	ra,0xfffff
    80014d58:	454080e7          	jalr	1108(ra) # 800141a8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80014d5c:	0144a783          	lw	a5,20(s1)
    80014d60:	0104a903          	lw	s2,16(s1)
    80014d64:	0327ce63          	blt	a5,s2,80014da0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80014d68:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80014d6c:	0304b503          	ld	a0,48(s1)
    80014d70:	fffff097          	auipc	ra,0xfffff
    80014d74:	464080e7          	jalr	1124(ra) # 800141d4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80014d78:	0284b503          	ld	a0,40(s1)
    80014d7c:	fffff097          	auipc	ra,0xfffff
    80014d80:	458080e7          	jalr	1112(ra) # 800141d4 <_Z10sem_signalP4_sem>

    return ret;
    80014d84:	00090513          	mv	a0,s2
    80014d88:	01813083          	ld	ra,24(sp)
    80014d8c:	01013403          	ld	s0,16(sp)
    80014d90:	00813483          	ld	s1,8(sp)
    80014d94:	00013903          	ld	s2,0(sp)
    80014d98:	02010113          	addi	sp,sp,32
    80014d9c:	00008067          	ret
        ret = cap - head + tail;
    80014da0:	0004a703          	lw	a4,0(s1)
    80014da4:	4127093b          	subw	s2,a4,s2
    80014da8:	00f9093b          	addw	s2,s2,a5
    80014dac:	fc1ff06f          	j	80014d6c <_ZN6Buffer6getCntEv+0x44>

0000000080014db0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80014db0:	fe010113          	addi	sp,sp,-32
    80014db4:	00113c23          	sd	ra,24(sp)
    80014db8:	00813823          	sd	s0,16(sp)
    80014dbc:	00913423          	sd	s1,8(sp)
    80014dc0:	02010413          	addi	s0,sp,32
    80014dc4:	00050493          	mv	s1,a0
    putc('\n');
    80014dc8:	00a00513          	li	a0,10
    80014dcc:	fffff097          	auipc	ra,0xfffff
    80014dd0:	534080e7          	jalr	1332(ra) # 80014300 <_Z4putcc>
    printString("Buffer deleted!\n");
    80014dd4:	00001517          	auipc	a0,0x1
    80014dd8:	22c50513          	addi	a0,a0,556 # 80016000 <kernelDataStart>
    80014ddc:	fffff097          	auipc	ra,0xfffff
    80014de0:	59c080e7          	jalr	1436(ra) # 80014378 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80014de4:	00048513          	mv	a0,s1
    80014de8:	00000097          	auipc	ra,0x0
    80014dec:	f40080e7          	jalr	-192(ra) # 80014d28 <_ZN6Buffer6getCntEv>
    80014df0:	02a05c63          	blez	a0,80014e28 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80014df4:	0084b783          	ld	a5,8(s1)
    80014df8:	0104a703          	lw	a4,16(s1)
    80014dfc:	00271713          	slli	a4,a4,0x2
    80014e00:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80014e04:	0007c503          	lbu	a0,0(a5)
    80014e08:	fffff097          	auipc	ra,0xfffff
    80014e0c:	4f8080e7          	jalr	1272(ra) # 80014300 <_Z4putcc>
        head = (head + 1) % cap;
    80014e10:	0104a783          	lw	a5,16(s1)
    80014e14:	0017879b          	addiw	a5,a5,1
    80014e18:	0004a703          	lw	a4,0(s1)
    80014e1c:	02e7e7bb          	remw	a5,a5,a4
    80014e20:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80014e24:	fc1ff06f          	j	80014de4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80014e28:	02100513          	li	a0,33
    80014e2c:	fffff097          	auipc	ra,0xfffff
    80014e30:	4d4080e7          	jalr	1236(ra) # 80014300 <_Z4putcc>
    putc('\n');
    80014e34:	00a00513          	li	a0,10
    80014e38:	fffff097          	auipc	ra,0xfffff
    80014e3c:	4c8080e7          	jalr	1224(ra) # 80014300 <_Z4putcc>
    mem_free(buffer);
    80014e40:	0084b503          	ld	a0,8(s1)
    80014e44:	fffff097          	auipc	ra,0xfffff
    80014e48:	20c080e7          	jalr	524(ra) # 80014050 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80014e4c:	0204b503          	ld	a0,32(s1)
    80014e50:	fffff097          	auipc	ra,0xfffff
    80014e54:	32c080e7          	jalr	812(ra) # 8001417c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80014e58:	0184b503          	ld	a0,24(s1)
    80014e5c:	fffff097          	auipc	ra,0xfffff
    80014e60:	320080e7          	jalr	800(ra) # 8001417c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80014e64:	0304b503          	ld	a0,48(s1)
    80014e68:	fffff097          	auipc	ra,0xfffff
    80014e6c:	314080e7          	jalr	788(ra) # 8001417c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80014e70:	0284b503          	ld	a0,40(s1)
    80014e74:	fffff097          	auipc	ra,0xfffff
    80014e78:	308080e7          	jalr	776(ra) # 8001417c <_Z9sem_closeP4_sem>
}
    80014e7c:	01813083          	ld	ra,24(sp)
    80014e80:	01013403          	ld	s0,16(sp)
    80014e84:	00813483          	ld	s1,8(sp)
    80014e88:	02010113          	addi	sp,sp,32
    80014e8c:	00008067          	ret

0000000080014e90 <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80014e90:	ff010113          	addi	sp,sp,-16
    80014e94:	00113423          	sd	ra,8(sp)
    80014e98:	00813023          	sd	s0,0(sp)
    80014e9c:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80014ea0:	00053783          	ld	a5,0(a0)
    80014ea4:	0107b783          	ld	a5,16(a5)
    80014ea8:	000780e7          	jalr	a5
}
    80014eac:	00813083          	ld	ra,8(sp)
    80014eb0:	00013403          	ld	s0,0(sp)
    80014eb4:	01010113          	addi	sp,sp,16
    80014eb8:	00008067          	ret

0000000080014ebc <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80014ebc:	00001797          	auipc	a5,0x1
    80014ec0:	1c478793          	addi	a5,a5,452 # 80016080 <_ZTV6Thread+0x10>
    80014ec4:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80014ec8:	00853503          	ld	a0,8(a0)
    80014ecc:	02050663          	beqz	a0,80014ef8 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80014ed0:	ff010113          	addi	sp,sp,-16
    80014ed4:	00113423          	sd	ra,8(sp)
    80014ed8:	00813023          	sd	s0,0(sp)
    80014edc:	01010413          	addi	s0,sp,16
    delete myHandle;
    80014ee0:	fffff097          	auipc	ra,0xfffff
    80014ee4:	470080e7          	jalr	1136(ra) # 80014350 <_ZN7_threaddlEPv>
}
    80014ee8:	00813083          	ld	ra,8(sp)
    80014eec:	00013403          	ld	s0,0(sp)
    80014ef0:	01010113          	addi	sp,sp,16
    80014ef4:	00008067          	ret
    80014ef8:	00008067          	ret

0000000080014efc <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80014efc:	00001797          	auipc	a5,0x1
    80014f00:	1ac78793          	addi	a5,a5,428 # 800160a8 <_ZTV9Semaphore+0x10>
    80014f04:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80014f08:	00853503          	ld	a0,8(a0)
    80014f0c:	02050663          	beqz	a0,80014f38 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80014f10:	ff010113          	addi	sp,sp,-16
    80014f14:	00113423          	sd	ra,8(sp)
    80014f18:	00813023          	sd	s0,0(sp)
    80014f1c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80014f20:	00000097          	auipc	ra,0x0
    80014f24:	4c4080e7          	jalr	1220(ra) # 800153e4 <_ZN4_semdlEPv>
}
    80014f28:	00813083          	ld	ra,8(sp)
    80014f2c:	00013403          	ld	s0,0(sp)
    80014f30:	01010113          	addi	sp,sp,16
    80014f34:	00008067          	ret
    80014f38:	00008067          	ret

0000000080014f3c <_Znwm>:
{
    80014f3c:	ff010113          	addi	sp,sp,-16
    80014f40:	00113423          	sd	ra,8(sp)
    80014f44:	00813023          	sd	s0,0(sp)
    80014f48:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80014f4c:	fffff097          	auipc	ra,0xfffff
    80014f50:	0d4080e7          	jalr	212(ra) # 80014020 <_Z9mem_allocm>
}
    80014f54:	00813083          	ld	ra,8(sp)
    80014f58:	00013403          	ld	s0,0(sp)
    80014f5c:	01010113          	addi	sp,sp,16
    80014f60:	00008067          	ret

0000000080014f64 <_ZdlPv>:
{
    80014f64:	ff010113          	addi	sp,sp,-16
    80014f68:	00113423          	sd	ra,8(sp)
    80014f6c:	00813023          	sd	s0,0(sp)
    80014f70:	01010413          	addi	s0,sp,16
    mem_free(p);
    80014f74:	fffff097          	auipc	ra,0xfffff
    80014f78:	0dc080e7          	jalr	220(ra) # 80014050 <_Z8mem_freePv>
}
    80014f7c:	00813083          	ld	ra,8(sp)
    80014f80:	00013403          	ld	s0,0(sp)
    80014f84:	01010113          	addi	sp,sp,16
    80014f88:	00008067          	ret

0000000080014f8c <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80014f8c:	fe010113          	addi	sp,sp,-32
    80014f90:	00113c23          	sd	ra,24(sp)
    80014f94:	00813823          	sd	s0,16(sp)
    80014f98:	00913423          	sd	s1,8(sp)
    80014f9c:	02010413          	addi	s0,sp,32
    80014fa0:	00050493          	mv	s1,a0
}
    80014fa4:	00000097          	auipc	ra,0x0
    80014fa8:	f18080e7          	jalr	-232(ra) # 80014ebc <_ZN6ThreadD1Ev>
    80014fac:	00048513          	mv	a0,s1
    80014fb0:	00000097          	auipc	ra,0x0
    80014fb4:	fb4080e7          	jalr	-76(ra) # 80014f64 <_ZdlPv>
    80014fb8:	01813083          	ld	ra,24(sp)
    80014fbc:	01013403          	ld	s0,16(sp)
    80014fc0:	00813483          	ld	s1,8(sp)
    80014fc4:	02010113          	addi	sp,sp,32
    80014fc8:	00008067          	ret

0000000080014fcc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80014fcc:	fe010113          	addi	sp,sp,-32
    80014fd0:	00113c23          	sd	ra,24(sp)
    80014fd4:	00813823          	sd	s0,16(sp)
    80014fd8:	00913423          	sd	s1,8(sp)
    80014fdc:	02010413          	addi	s0,sp,32
    80014fe0:	00050493          	mv	s1,a0
}
    80014fe4:	00000097          	auipc	ra,0x0
    80014fe8:	f18080e7          	jalr	-232(ra) # 80014efc <_ZN9SemaphoreD1Ev>
    80014fec:	00048513          	mv	a0,s1
    80014ff0:	00000097          	auipc	ra,0x0
    80014ff4:	f74080e7          	jalr	-140(ra) # 80014f64 <_ZdlPv>
    80014ff8:	01813083          	ld	ra,24(sp)
    80014ffc:	01013403          	ld	s0,16(sp)
    80015000:	00813483          	ld	s1,8(sp)
    80015004:	02010113          	addi	sp,sp,32
    80015008:	00008067          	ret

000000008001500c <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    8001500c:	00853503          	ld	a0,8(a0)
    80015010:	02050663          	beqz	a0,8001503c <_ZN6Thread5startEv+0x30>
{
    80015014:	ff010113          	addi	sp,sp,-16
    80015018:	00113423          	sd	ra,8(sp)
    8001501c:	00813023          	sd	s0,0(sp)
    80015020:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80015024:	fffff097          	auipc	ra,0xfffff
    80015028:	208080e7          	jalr	520(ra) # 8001422c <_Z12thread_startPv>
}
    8001502c:	00813083          	ld	ra,8(sp)
    80015030:	00013403          	ld	s0,0(sp)
    80015034:	01010113          	addi	sp,sp,16
    80015038:	00008067          	ret
        return -1;
    8001503c:	fff00513          	li	a0,-1
}
    80015040:	00008067          	ret

0000000080015044 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80015044:	ff010113          	addi	sp,sp,-16
    80015048:	00113423          	sd	ra,8(sp)
    8001504c:	00813023          	sd	s0,0(sp)
    80015050:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80015054:	fffff097          	auipc	ra,0xfffff
    80015058:	0a8080e7          	jalr	168(ra) # 800140fc <_Z15thread_dispatchv>
}
    8001505c:	00813083          	ld	ra,8(sp)
    80015060:	00013403          	ld	s0,0(sp)
    80015064:	01010113          	addi	sp,sp,16
    80015068:	00008067          	ret

000000008001506c <_ZN6Thread5sleepEm>:
{
    8001506c:	ff010113          	addi	sp,sp,-16
    80015070:	00113423          	sd	ra,8(sp)
    80015074:	00813023          	sd	s0,0(sp)
    80015078:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8001507c:	fffff097          	auipc	ra,0xfffff
    80015080:	184080e7          	jalr	388(ra) # 80014200 <_Z10time_sleepm>
}
    80015084:	00813083          	ld	ra,8(sp)
    80015088:	00013403          	ld	s0,0(sp)
    8001508c:	01010113          	addi	sp,sp,16
    80015090:	00008067          	ret

0000000080015094 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80015094:	fe010113          	addi	sp,sp,-32
    80015098:	00113c23          	sd	ra,24(sp)
    8001509c:	00813823          	sd	s0,16(sp)
    800150a0:	00913423          	sd	s1,8(sp)
    800150a4:	01213023          	sd	s2,0(sp)
    800150a8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800150ac:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800150b0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800150b4:	0004b783          	ld	a5,0(s1)
    800150b8:	0187b783          	ld	a5,24(a5)
    800150bc:	00048513          	mv	a0,s1
    800150c0:	000780e7          	jalr	a5
        Thread::sleep(time);
    800150c4:	00090513          	mv	a0,s2
    800150c8:	00000097          	auipc	ra,0x0
    800150cc:	fa4080e7          	jalr	-92(ra) # 8001506c <_ZN6Thread5sleepEm>
    while(true)
    800150d0:	fe5ff06f          	j	800150b4 <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800150d4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800150d4:	ff010113          	addi	sp,sp,-16
    800150d8:	00113423          	sd	ra,8(sp)
    800150dc:	00813023          	sd	s0,0(sp)
    800150e0:	01010413          	addi	s0,sp,16
    800150e4:	00001797          	auipc	a5,0x1
    800150e8:	f9c78793          	addi	a5,a5,-100 # 80016080 <_ZTV6Thread+0x10>
    800150ec:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800150f0:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    800150f4:	00850513          	addi	a0,a0,8
    800150f8:	fffff097          	auipc	ra,0xfffff
    800150fc:	160080e7          	jalr	352(ra) # 80014258 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80015100:	00813083          	ld	ra,8(sp)
    80015104:	00013403          	ld	s0,0(sp)
    80015108:	01010113          	addi	sp,sp,16
    8001510c:	00008067          	ret

0000000080015110 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80015110:	ff010113          	addi	sp,sp,-16
    80015114:	00113423          	sd	ra,8(sp)
    80015118:	00813023          	sd	s0,0(sp)
    8001511c:	01010413          	addi	s0,sp,16
    80015120:	00001797          	auipc	a5,0x1
    80015124:	f6078793          	addi	a5,a5,-160 # 80016080 <_ZTV6Thread+0x10>
    80015128:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8001512c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80015130:	00050613          	mv	a2,a0
    80015134:	00000597          	auipc	a1,0x0
    80015138:	d5c58593          	addi	a1,a1,-676 # 80014e90 <_ZN6Thread6runnerEPv>
    8001513c:	00850513          	addi	a0,a0,8
    80015140:	fffff097          	auipc	ra,0xfffff
    80015144:	118080e7          	jalr	280(ra) # 80014258 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80015148:	00813083          	ld	ra,8(sp)
    8001514c:	00013403          	ld	s0,0(sp)
    80015150:	01010113          	addi	sp,sp,16
    80015154:	00008067          	ret

0000000080015158 <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    80015158:	00853503          	ld	a0,8(a0)
    8001515c:	02050663          	beqz	a0,80015188 <_ZN9Semaphore4waitEv+0x30>
{
    80015160:	ff010113          	addi	sp,sp,-16
    80015164:	00113423          	sd	ra,8(sp)
    80015168:	00813023          	sd	s0,0(sp)
    8001516c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80015170:	fffff097          	auipc	ra,0xfffff
    80015174:	038080e7          	jalr	56(ra) # 800141a8 <_Z8sem_waitP4_sem>
}
    80015178:	00813083          	ld	ra,8(sp)
    8001517c:	00013403          	ld	s0,0(sp)
    80015180:	01010113          	addi	sp,sp,16
    80015184:	00008067          	ret
        return -1;
    80015188:	fff00513          	li	a0,-1
}
    8001518c:	00008067          	ret

0000000080015190 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80015190:	fe010113          	addi	sp,sp,-32
    80015194:	00113c23          	sd	ra,24(sp)
    80015198:	00813823          	sd	s0,16(sp)
    8001519c:	00913423          	sd	s1,8(sp)
    800151a0:	02010413          	addi	s0,sp,32
    800151a4:	00050493          	mv	s1,a0
    800151a8:	00001797          	auipc	a5,0x1
    800151ac:	f0078793          	addi	a5,a5,-256 # 800160a8 <_ZTV9Semaphore+0x10>
    800151b0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800151b4:	00850513          	addi	a0,a0,8
    800151b8:	fffff097          	auipc	ra,0xfffff
    800151bc:	f8c080e7          	jalr	-116(ra) # 80014144 <_Z8sem_openPP4_semj>
    if(retval != 0)
    800151c0:	00050463          	beqz	a0,800151c8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    800151c4:	0004b423          	sd	zero,8(s1)
}
    800151c8:	01813083          	ld	ra,24(sp)
    800151cc:	01013403          	ld	s0,16(sp)
    800151d0:	00813483          	ld	s1,8(sp)
    800151d4:	02010113          	addi	sp,sp,32
    800151d8:	00008067          	ret

00000000800151dc <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    800151dc:	00853503          	ld	a0,8(a0)
    800151e0:	02050663          	beqz	a0,8001520c <_ZN9Semaphore6signalEv+0x30>
{
    800151e4:	ff010113          	addi	sp,sp,-16
    800151e8:	00113423          	sd	ra,8(sp)
    800151ec:	00813023          	sd	s0,0(sp)
    800151f0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800151f4:	fffff097          	auipc	ra,0xfffff
    800151f8:	fe0080e7          	jalr	-32(ra) # 800141d4 <_Z10sem_signalP4_sem>
}
    800151fc:	00813083          	ld	ra,8(sp)
    80015200:	00013403          	ld	s0,0(sp)
    80015204:	01010113          	addi	sp,sp,16
    80015208:	00008067          	ret
        return -1;
    8001520c:	fff00513          	li	a0,-1
}
    80015210:	00008067          	ret

0000000080015214 <_ZN7Console4getcEv>:
{
    80015214:	ff010113          	addi	sp,sp,-16
    80015218:	00113423          	sd	ra,8(sp)
    8001521c:	00813023          	sd	s0,0(sp)
    80015220:	01010413          	addi	s0,sp,16
    return ::getc();
    80015224:	fffff097          	auipc	ra,0xfffff
    80015228:	0b4080e7          	jalr	180(ra) # 800142d8 <_Z4getcv>
}
    8001522c:	00813083          	ld	ra,8(sp)
    80015230:	00013403          	ld	s0,0(sp)
    80015234:	01010113          	addi	sp,sp,16
    80015238:	00008067          	ret

000000008001523c <_ZN7Console4putcEc>:
{
    8001523c:	ff010113          	addi	sp,sp,-16
    80015240:	00113423          	sd	ra,8(sp)
    80015244:	00813023          	sd	s0,0(sp)
    80015248:	01010413          	addi	s0,sp,16
    return ::putc(c);
    8001524c:	fffff097          	auipc	ra,0xfffff
    80015250:	0b4080e7          	jalr	180(ra) # 80014300 <_Z4putcc>
}
    80015254:	00813083          	ld	ra,8(sp)
    80015258:	00013403          	ld	s0,0(sp)
    8001525c:	01010113          	addi	sp,sp,16
    80015260:	00008067          	ret

0000000080015264 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80015264:	fe010113          	addi	sp,sp,-32
    80015268:	00113c23          	sd	ra,24(sp)
    8001526c:	00813823          	sd	s0,16(sp)
    80015270:	00913423          	sd	s1,8(sp)
    80015274:	01213023          	sd	s2,0(sp)
    80015278:	02010413          	addi	s0,sp,32
    8001527c:	00050493          	mv	s1,a0
    80015280:	00058913          	mv	s2,a1
    80015284:	01000513          	li	a0,16
    80015288:	00000097          	auipc	ra,0x0
    8001528c:	cb4080e7          	jalr	-844(ra) # 80014f3c <_Znwm>
    80015290:	00050613          	mv	a2,a0
    80015294:	00050663          	beqz	a0,800152a0 <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80015298:	00953023          	sd	s1,0(a0)
    8001529c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800152a0:	00000597          	auipc	a1,0x0
    800152a4:	df458593          	addi	a1,a1,-524 # 80015094 <_ZN14PeriodicThread6runnerEPv>
    800152a8:	00048513          	mv	a0,s1
    800152ac:	00000097          	auipc	ra,0x0
    800152b0:	e28080e7          	jalr	-472(ra) # 800150d4 <_ZN6ThreadC1EPFvPvES0_>
    800152b4:	00001797          	auipc	a5,0x1
    800152b8:	d9c78793          	addi	a5,a5,-612 # 80016050 <_ZTV14PeriodicThread+0x10>
    800152bc:	00f4b023          	sd	a5,0(s1)
}
    800152c0:	01813083          	ld	ra,24(sp)
    800152c4:	01013403          	ld	s0,16(sp)
    800152c8:	00813483          	ld	s1,8(sp)
    800152cc:	00013903          	ld	s2,0(sp)
    800152d0:	02010113          	addi	sp,sp,32
    800152d4:	00008067          	ret

00000000800152d8 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800152d8:	ff010113          	addi	sp,sp,-16
    800152dc:	00813423          	sd	s0,8(sp)
    800152e0:	01010413          	addi	s0,sp,16
    800152e4:	00813403          	ld	s0,8(sp)
    800152e8:	01010113          	addi	sp,sp,16
    800152ec:	00008067          	ret

00000000800152f0 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800152f0:	ff010113          	addi	sp,sp,-16
    800152f4:	00813423          	sd	s0,8(sp)
    800152f8:	01010413          	addi	s0,sp,16
    800152fc:	00813403          	ld	s0,8(sp)
    80015300:	01010113          	addi	sp,sp,16
    80015304:	00008067          	ret

0000000080015308 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80015308:	ff010113          	addi	sp,sp,-16
    8001530c:	00113423          	sd	ra,8(sp)
    80015310:	00813023          	sd	s0,0(sp)
    80015314:	01010413          	addi	s0,sp,16
    80015318:	00001797          	auipc	a5,0x1
    8001531c:	d3878793          	addi	a5,a5,-712 # 80016050 <_ZTV14PeriodicThread+0x10>
    80015320:	00f53023          	sd	a5,0(a0)
    80015324:	00000097          	auipc	ra,0x0
    80015328:	b98080e7          	jalr	-1128(ra) # 80014ebc <_ZN6ThreadD1Ev>
    8001532c:	00813083          	ld	ra,8(sp)
    80015330:	00013403          	ld	s0,0(sp)
    80015334:	01010113          	addi	sp,sp,16
    80015338:	00008067          	ret

000000008001533c <_ZN14PeriodicThreadD0Ev>:
    8001533c:	fe010113          	addi	sp,sp,-32
    80015340:	00113c23          	sd	ra,24(sp)
    80015344:	00813823          	sd	s0,16(sp)
    80015348:	00913423          	sd	s1,8(sp)
    8001534c:	02010413          	addi	s0,sp,32
    80015350:	00050493          	mv	s1,a0
    80015354:	00001797          	auipc	a5,0x1
    80015358:	cfc78793          	addi	a5,a5,-772 # 80016050 <_ZTV14PeriodicThread+0x10>
    8001535c:	00f53023          	sd	a5,0(a0)
    80015360:	00000097          	auipc	ra,0x0
    80015364:	b5c080e7          	jalr	-1188(ra) # 80014ebc <_ZN6ThreadD1Ev>
    80015368:	00048513          	mv	a0,s1
    8001536c:	00000097          	auipc	ra,0x0
    80015370:	bf8080e7          	jalr	-1032(ra) # 80014f64 <_ZdlPv>
    80015374:	01813083          	ld	ra,24(sp)
    80015378:	01013403          	ld	s0,16(sp)
    8001537c:	00813483          	ld	s1,8(sp)
    80015380:	02010113          	addi	sp,sp,32
    80015384:	00008067          	ret

0000000080015388 <_ZN14PCBWrapperUser15userMainWrapperEPv>:
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c.hpp"
#include "test/userMain.hpp"

void PCBWrapperUser::userMainWrapper(void* a)
{
    80015388:	ff010113          	addi	sp,sp,-16
    8001538c:	00113423          	sd	ra,8(sp)
    80015390:	00813023          	sd	s0,0(sp)
    80015394:	01010413          	addi	s0,sp,16
    userMain();
    80015398:	fffff097          	auipc	ra,0xfffff
    8001539c:	7c0080e7          	jalr	1984(ra) # 80014b58 <_Z8userMainv>
}
    800153a0:	00813083          	ld	ra,8(sp)
    800153a4:	00013403          	ld	s0,0(sp)
    800153a8:	01010113          	addi	sp,sp,16
    800153ac:	00008067          	ret

00000000800153b0 <_ZN14PCBWrapperUser11wrapperUserEPFvPvES0_>:

void PCBWrapperUser::wrapperUser(Body body, void* args)
{
    800153b0:	ff010113          	addi	sp,sp,-16
    800153b4:	00113423          	sd	ra,8(sp)
    800153b8:	00813023          	sd	s0,0(sp)
    800153bc:	01010413          	addi	s0,sp,16
    800153c0:	00050793          	mv	a5,a0
    body(args);
    800153c4:	00058513          	mv	a0,a1
    800153c8:	000780e7          	jalr	a5
    thread_exit();
    800153cc:	fffff097          	auipc	ra,0xfffff
    800153d0:	d50080e7          	jalr	-688(ra) # 8001411c <_Z11thread_exitv>
    800153d4:	00813083          	ld	ra,8(sp)
    800153d8:	00013403          	ld	s0,0(sp)
    800153dc:	01010113          	addi	sp,sp,16
    800153e0:	00008067          	ret

00000000800153e4 <_ZN4_semdlEPv>:
//

#include "../../h/_sem.hpp"
#include "../../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    800153e4:	ff010113          	addi	sp,sp,-16
    800153e8:	00113423          	sd	ra,8(sp)
    800153ec:	00813023          	sd	s0,0(sp)
    800153f0:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    800153f4:	fffff097          	auipc	ra,0xfffff
    800153f8:	d88080e7          	jalr	-632(ra) # 8001417c <_Z9sem_closeP4_sem>
}
    800153fc:	00813083          	ld	ra,8(sp)
    80015400:	00013403          	ld	s0,0(sp)
    80015404:	01010113          	addi	sp,sp,16
    80015408:	00008067          	ret
	...

0000000080016000 <kernelDataStart>:
    80016000:	7542                	ld	a0,48(sp)
    80016002:	6666                	ld	a2,88(sp)
    80016004:	7265                	lui	tp,0xffff9
    80016006:	6420                	ld	s0,72(s0)
    80016008:	6c65                	lui	s8,0x19
    8001600a:	7465                	lui	s0,0xffff9
    8001600c:	6465                	lui	s0,0x19
    8001600e:	0a21                	addi	s4,s4,8
	...
    80016018:	6548                	ld	a0,136(a0)
    8001601a:	6c6c                	ld	a1,216(s0)
    8001601c:	0000206f          	j	8001801c <end+0x101c>
    80016020:	2120                	fld	fs0,64(a0)
    80016022:	000a                	c.slli	zero,0x2
    80016024:	0000                	unimp
	...

0000000080016028 <digits>:
    80016028:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

0000000080016040 <_ZTV14PeriodicThread>:
	...
    80016050:	5308 8001 0000 0000 533c 8001 0000 0000     .S......<S......
    80016060:	52d8 8001 0000 0000 52f0 8001 0000 0000     .R.......R......

0000000080016070 <_ZTV6Thread>:
	...
    80016080:	4ebc 8001 0000 0000 4f8c 8001 0000 0000     .N.......O......
    80016090:	52d8 8001 0000 0000                         .R......

0000000080016098 <_ZTV9Semaphore>:
	...
    800160a8:	4efc 8001 0000 0000 4fcc 8001 0000 0000     .N.......O......

00000000800160b8 <lockPrint>:
	...

00000000800160c0 <finished>:
	...
    800160c8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    800160d8:	0d1b 0002 0020 0000 0018 0000 df3c ffff     .... .......<...
    800160e8:	0030 0000 4400 100e 8844 4402 000c 0000     0....D..D..D....
    800160f8:	0c00 1002 0e44 0000 0020 0000 003c 0000     ....D... ...<...
    80016108:	df48 ffff 002c 0000 4400 100e 8844 4402     H...,....D..D..D
    80016118:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    80016128:	0060 0000 df50 ffff 0080 0000 4400 000e     `...P........D..
	...
    80016140:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    80016150:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    80016160:	0098 0000 df98 ffff 0020 0000 4400 100e     ........ ....D..
    80016170:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    80016180:	0020 0000 00bc 0000 df94 ffff 0028 0000      ...........(...
    80016190:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    800161a0:	0e44 0000 0020 0000 00e0 0000 df98 ffff     D... ...........
    800161b0:	0038 0000 4400 100e 8844 4402 000c 0000     8....D..D..D....
    800161c0:	0c00 1002 0e44 0000 0020 0000 0104 0000     ....D... .......
    800161d0:	dfac ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    800161e0:	000c 0000 0c00 1002 0e44 0000 0020 0000     ........D... ...
    800161f0:	0128 0000 dfb4 ffff 002c 0000 4400 100e     (.......,....D..
    80016200:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    80016210:	0020 0000 014c 0000 dfbc ffff 002c 0000      ...L.......,...
    80016220:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    80016230:	0e44 0000 0020 0000 0170 0000 dfc4 ffff     D... ...p.......
    80016240:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    80016250:	0c00 1002 0e44 0000 0020 0000 0194 0000     ....D... .......
    80016260:	dfcc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    80016270:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    80016280:	01b8 0000 dfd4 ffff 0080 0000 4400 000e     .............D..
	...
    80016298:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    800162a8:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    800162b8:	01f0 0000 e01c ffff 0028 0000 4400 100e     ........(....D..
    800162c8:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    800162d8:	0020 0000 0214 0000 e020 ffff 0024 0000      ....... ...$...
    800162e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    800162f8:	0e44 0000 0020 0000 0238 0000 e020 ffff     D... ...8... ...
    80016308:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    80016318:	0c00 1002 0e44 0000 0010 0000 0000 0000     ....D...........
    80016328:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    80016338:	0018 0000 e014 ffff 0028 0000 4400 000e     ........(....D..
    80016348:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016358:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    80016368:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    80016378:	0018 0000 dffc ffff 007c 0000 4400 000e     ........|....D..
    80016388:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    80016398:	020c 4420 44c9 000e 0034 0000 0044 0000     .. D.D..4...D...
    800163a8:	e04c ffff 00cc 0000 4400 000e 0000 0000     L........D......
    800163b8:	0000 0000 0000 9400 440c 080c 0200 0000     .........D......
    800163c8:	0000 020c 4430 44c9 44d2 44d3 44d4 000e     ....0D.D.D.D.D..
    800163d8:	0020 0000 007c 0000 e0e0 ffff 0050 0000      ...|.......P...
    800163e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    800163f8:	0e44 0000 0030 0000 00a0 0000 e10c ffff     D...0...........
    80016408:	0114 0000 4400 000e 0000 0000 0000 0000     .....D..........
    80016418:	9300 440a 080c 0200 0000 0000 020c 4440     ...D..........@D
    80016428:	44c9 44d2 44d3 000e 0018 0000 0000 0000     .D.D.D..........
    80016438:	7a03 4c50 0052 7c01 0701 4d9b ff24 1bff     .zPLR..|...M$...
    80016448:	0d1b 0002 0038 0000 0020 0000 e1d0 ffff     ....8... .......
    80016458:	0164 0000 6404 ff23 44ff 000e 0000 0000     d....d#..D......
    80016468:	0000 0000 9300 440a 080c 0000 0000 0000     .......D........
    80016478:	0c00 3002 c944 d244 d344 0e44 4400 000b     ...0D.D.D.D..D..
    80016488:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    80016498:	0d1b 0002 002c 0000 0018 0000 e2e4 ffff     ....,...........
    800164a8:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    800164b8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    800164c8:	44d2 000e 002c 0000 0048 0000 e344 ffff     .D..,...H...D...
    800164d8:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    800164e8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    800164f8:	44d2 000e 0030 0000 0078 0000 e3a0 ffff     .D..0...x.......
    80016508:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    80016518:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    80016528:	d244 0e44 4400 000b 002c 0000 0104 0000     D.D..D..,.......
    80016538:	e3f4 ffff 0100 0000 2104 ff23 44ff 000e     .........!#..D..
    80016548:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    80016558:	020c 4420 44c9 000e 0010 0000 0000 0000     .. D.D..........
    80016568:	7a03 0052 7c01 0101 0d1b 0002 002c 0000     .zR..|......,...
    80016578:	0018 0000 e4b0 ffff 00a4 0000 4400 000e     .............D..
    80016588:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016598:	0000 020c 4420 44c9 44d2 000e 0028 0000     .... D.D.D..(...
    800165a8:	0048 0000 e524 ffff 0088 0000 4400 000e     H...$........D..
    800165b8:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    800165c8:	020c 4440 44c9 000e 0024 0000 0074 0000     ..@D.D..$...t...
    800165d8:	e580 ffff 0018 0000 4400 100e 8844 4402     .........D..D..D
    800165e8:	000c 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
    800165f8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    80016608:	0d1b 0002 002c 0000 0018 0000 e55c ffff     ....,.......\...
    80016618:	009c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    80016628:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    80016638:	44d2 000e 002c 0000 0048 0000 e5c8 ffff     .D..,...H.......
    80016648:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    80016658:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    80016668:	44d2 000e 002c 0000 0078 0000 e628 ffff     .D..,...x...(...
    80016678:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    80016688:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    80016698:	44d2 000e 0030 0000 00a8 0000 e684 ffff     .D..0...........
    800166a8:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    800166b8:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    800166c8:	d244 0e44 4400 000b 0018 0000 0000 0000     D.D..D..........
    800166d8:	7a03 4c50 0052 7c01 0701 ad9b ff21 1bff     .zPLR..|....!...
    800166e8:	0d1b 0002 0030 0000 0020 0000 e6bc ffff     ....0... .......
    800166f8:	00e0 0000 6904 ff21 44ff 000e 0000 0000     .....i!..D......
    80016708:	8900 4406 080c 0200 0000 0000 020c 4420     ...D.......... D
    80016718:	44c9 000e 0000 0000 0010 0000 0000 0000     .D..............
    80016728:	7a03 0052 7c01 0101 0d1b 0002 0020 0000     .zR..|...... ...
    80016738:	0018 0000 eb9c ffff 0018 0000 4400 100e     .............D..
    80016748:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    80016758:	0020 0000 003c 0000 eb90 ffff 0018 0000      ...<...........
    80016768:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    80016778:	0e44 0000 0024 0000 0060 0000 e70c ffff     D...$...`.......
    80016788:	002c 0000 4400 000e 0000 8800 4404 080c     ,....D.......D..
    80016798:	0000 0000 0c00 1002 0e44 0000 0018 0000     ........D.......
    800167a8:	0000 0000 7a03 4c50 0052 7c01 0701 d99b     .....zPLR..|....
    800167b8:	ff20 1bff 0d1b 0002 0028 0000 0020 0000      .......(... ...
    800167c8:	e6f4 ffff 0040 0000 9904 ff20 58ff 000e     ....@..... ..X..
    800167d8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    800167e8:	0e44 0000 0024 0000 00d0 0000 eb14 ffff     D...$...........
    800167f8:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    80016808:	0000 0000 0c00 1002 0e44 0000 0028 0000     ........D...(...
    80016818:	0074 0000 e6e0 ffff 0040 0000 4904 ff20     t.......@....I .
    80016828:	58ff 000e 0000 8800 4404 080c 0000 0000     .X.......D......
    80016838:	0c00 1002 0e44 0000 0024 0000 0124 0000     ....D...$...$...
    80016848:	e6f4 ffff 0028 0000 4400 000e 0000 8800     ....(....D......
    80016858:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    80016868:	0024 0000 014c 0000 e6f4 ffff 0028 0000     $...L.......(...
    80016878:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    80016888:	0c00 1002 0e44 0000 0028 0000 0174 0000     ....D...(...t...
    80016898:	e6f4 ffff 0040 0000 4400 000e 0000 0000     ....@....D......
    800168a8:	8900 4406 080c 0000 0000 0c00 2002 c944     ...D......... D.
    800168b8:	0e44 0000 0028 0000 01a0 0000 e708 ffff     D...(...........
    800168c8:	0040 0000 4400 000e 0000 0000 8900 4406     @....D.........D
    800168d8:	080c 0000 0000 0c00 2002 c944 0e44 0000     ......... D.D...
    800168e8:	0028 0000 01cc 0000 ea4c ffff 004c 0000     (.......L...L...
    800168f8:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    80016908:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    80016918:	01f8 0000 e6f0 ffff 0038 0000 4c00 000e     ........8....L..
    80016928:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016938:	0e44 0000 0024 0000 0220 0000 e700 ffff     D...$... .......
    80016948:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    80016958:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    80016968:	0248 0000 e700 ffff 0028 0000 4400 000e     H.......(....D..
    80016978:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016988:	0e44 0000 0020 0000 0270 0000 e700 ffff     D... ...p.......
    80016998:	0040 0000 4400 000e 0000 0000 0000 9200     @....D..........
    800169a8:	4408 080c 0000 0000 0024 0000 0294 0000     .D......$.......
    800169b8:	e71c ffff 003c 0000 4400 000e 0000 8800     ....<....D......
    800169c8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    800169d8:	0024 0000 02bc 0000 e730 ffff 0048 0000     $.......0...H...
    800169e8:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    800169f8:	0c00 1002 0e44 0000 0024 0000 02e4 0000     ....D...$.......
    80016a08:	e750 ffff 0038 0000 4c00 000e 0000 8800     P...8....L......
    80016a18:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    80016a28:	0028 0000 030c 0000 e760 ffff 004c 0000     (.......`...L...
    80016a38:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    80016a48:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    80016a58:	0338 0000 e780 ffff 0038 0000 4c00 000e     8.......8....L..
    80016a68:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016a78:	0e44 0000 0024 0000 0360 0000 e790 ffff     D...$...`.......
    80016a88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    80016a98:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    80016aa8:	0388 0000 e790 ffff 0028 0000 4400 000e     ........(....D..
    80016ab8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016ac8:	0e44 0000 0030 0000 03b0 0000 e790 ffff     D...0...........
    80016ad8:	0074 0000 4400 000e 0000 0000 0000 9200     t....D..........
    80016ae8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    80016af8:	44d2 000e 0000 0000 0010 0000 0000 0000     .D..............
    80016b08:	7a03 0052 7c01 0101 0d1b 0002 0024 0000     .zR..|......$...
    80016b18:	0018 0000 e86c ffff 0028 0000 4400 000e     ....l...(....D..
    80016b28:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016b38:	0e44 0000 0028 0000 0040 0000 e86c ffff     D...(...@...l...
    80016b48:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    80016b58:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
    80016b68:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    80016b78:	0d1b 0002 0028 0000 0018 0000 e860 ffff     ....(.......`...
    80016b88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    80016b98:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
